del_or_rename = 'rename' # 'delete'
workspace_filter = "like '%VT %'"
schema_name='vt_vintertjeneste'
rename_suffix = '_20250630'
# Under normale omstændigheder skal der *IKKE* laves rettelser under denne linje

sel_ag_et = """SELECT DISTINCT
    ag.arbejdsgruppe_navn AS workspace_name, 
    agt.ebasis_type AS element_gtype,
    agt.etype_key AS element_type
FROM arbejde.arbejdsgrupper ag
JOIN lookup.arbejdsgruppe_typer_element_typer agt ON agt.atype_key = ag.atype_key
WHERE ag.arbejdsgruppe_navn {workspace_filter}
ORDER BY 1,3;
"""

sel_attribute = """SELECT view_template FROM lookup.ekstra_template WHERE etype_key = '{}';
"""

cre_schema = """CREATE SCHEMA IF NOT EXISTS "{schema_name}";
"""
ren_view = """ALTER VIEW IF EXISTS "{schema_name}"."{view_name}" RENAME TO "{view_name}{rename_suffix}";
"""  
drop_view = """DROP VIEW IF EXISTS "{schema_name}"."{view_name}";
"""  

cre_view_f = """CREATE VIEW "{schema_name}"."{view_name}" AS
  SELECT row_number() OVER () AS gid,
    0 AS ogc_fid,
    (lower(a.etype_key::text) || '.'::text) || a.id::text AS gml_id,
    a.id::text AS elementid,
    a.navn AS elementname,
    a.areal AS measure,
    a.omkreds AS perimeter,
    a.beskrivelse::text AS element_description,
    a.adresse::text AS address,
    a.oprettet::text AS created,
    a.rettet::text AS updated,
    a.oprindelse::text AS origin,
    a.etype_key AS elementtypekey,
    a.etype_navn AS elementtypename,
    'm2'::text AS unittype,
    'Polygon'::text AS geometrytype,
    'active'::text AS status,
    a.oprettet_af AS createdby,
    a.rettet_af AS updatedby,
    EXTRACT(day FROM now() - a.oprettet::date::timestamp with time zone) AS days_from_creation,
    EXTRACT(day FROM now() - a.rettet::date::timestamp with time zone) AS days_from_update,
    b.level_1_workareas,
    b.level_1_workareastypes AS level_1_workareatypes,
    c.level_2_workareas,
    c.level_2_workareastypes AS level_2_workareatypes,
{attributes}a.geom
  FROM elementer.element_flader a
    LEFT JOIN elementer.element_flader_workspaces1_view b ON a.id = b.element_id
    LEFT JOIN elementer.element_flader_workspaces2_view c ON a.id = c.element_id
  WHERE a.etype_key::text = '{element_type}'  AND b.level_1_workareas::text ~~ '%{workspace_name}%'::text;

"""

cre_view_l = """CREATE VIEW "{schema_name}"."{view_name}" AS
  SELECT row_number() OVER () AS gid,
    0 AS ogc_fid,
    (lower(a.etype_key::text) || '.'::text) || a.id::text AS gml_id,
    a.id::text AS elementid,
    a.navn AS elementname,
    a.laengde AS measure,
    NULL::double precision AS perimeter,
    a.beskrivelse::text AS element_description,
    a.adresse::text AS address,
    a.oprettet::text AS created,
    a.rettet::text AS updated,
    a.oprindelse::text AS origin,
    a.etype_key AS elementtypekey,
    a.etype_navn AS elementtypename,
    'meter'::text AS unittype,
    'Line'::text AS geometrytype,
    'active'::text AS status,
    a.oprettet_af AS createdby,
    a.rettet_af AS updatedby,
    EXTRACT(day FROM now() - a.oprettet::date::timestamp with time zone) AS days_from_creation,
    EXTRACT(day FROM now() - a.rettet::date::timestamp with time zone) AS days_from_update,
    b.level_1_workareas,
    b.level_1_workareastypes AS level_1_workareatypes,
    c.level_2_workareas,
    c.level_2_workareastypes AS level_2_workareatypes,
{attributes}a.geom
  FROM elementer.element_linjer a
    LEFT JOIN elementer.element_linjer_workspaces1_view b ON a.id = b.element_id
    LEFT JOIN elementer.element_linjer_workspaces2_view c ON a.id = c.element_id
  WHERE a.etype_key = '{element_type}' AND b.level_1_workareas::text ~~ '%{workspace_name}%'::text;

"""

cre_view_p = """CREATE VIEW "{schema_name}"."{view_name}" AS
  SELECT row_number() OVER () AS gid,
    0 AS ogc_fid,
    (lower(a.etype_key::text) || '.'::text) || a.id::text AS gml_id,
    a.id::text AS elementid,
    a.navn AS elementname,
    1 AS measure,
    NULL::double precision AS perimeter,
    a.beskrivelse::text AS element_description,
    a.adresse::text AS address,
    a.oprettet::text AS created,
    a.rettet::text AS updated,
    a.oprindelse::text AS origin,
    a.etype_key AS elementtypekey,
    a.etype_navn AS elementtypename,
    'stk.'::text AS unittype,
    'Point'::text AS geometrytype,
    'active'::text AS status,
    a.oprettet_af AS createdby,
    a.rettet_af AS updatedby,
    EXTRACT(day FROM now() - a.oprettet::date::timestamp with time zone) AS days_from_creation,
    EXTRACT(day FROM now() - a.rettet::date::timestamp with time zone) AS days_from_update,
    b.level_1_workareas,
    b.level_1_workareastypes AS level_1_workareatypes,
    c.level_2_workareas,
    c.level_2_workareastypes AS level_2_workareatypes,
{attributes}a.geom
  FROM elementer.element_punkter a
    LEFT JOIN elementer.element_punkter_workspaces1_view b ON a.id = b.element_id
    LEFT JOIN elementer.element_punkter_workspaces2_view c ON a.id = c.element_id
  WHERE a.etype_key = '{element_type}' AND b.level_1_workareas ~~ '%{workspace_name}%'::text;

"""

# Connection to MapCentia database,
db_host="common-db.gc2.io"
db_port="5432"
db_user="ballerup_park"
db_pass="gaker9jI"
database="ballerup_park"

# Imports
import psycopg2
import re

# Connection to DB
conn = psycopg2.connect(database=database, host=db_host, user=db_user, password=db_pass, port=db_port)
cur = conn.cursor()
cur2 = conn.cursor()


# Opret evt. schema
sqlcmd = cre_schema.format(schema_name=schema_name)
print (sqlcmd)
#cur.execute(sqlcmd)

# Find valgte arbejdsgrupper 
sqlcmd = sel_ag_et.format(workspace_filter=workspace_filter)
#print (sqlcmd)
cur.execute(sqlcmd)
rows = cur.fetchall()

# Løb alle igennem kombinationer af workspace/elementtyper
for r in rows:

    print('--{} / {} / {}'.format(r[0],r[1],r[2]))
    print('-------------------------------------------------------------------------')

    workspace_name = r[0]
    element_gtype = r[1].lower()
    element_type = r[2]
    view_name = workspace_name.lower().replace('æ','ae').replace('ø','oe').replace('å','aa') 
    view_name = '{}_{}'.format(re.sub(r'[^a-zA-Z0-9]+', '_', view_name),element_type.lower())
    view_name = view_name.replace('__','_')
    
    # Ryd op mht. eksisterende views
    match del_or_rename[:1].lower():
        case "r": sqlcmd = ren_view.format(schema_name=schema_name,view_name=view_name,rename_suffix=rename_suffix)
        case "d": sqlcmd = drop_view.format(schema_name=schema_name,view_name=view_name)
    print (sqlcmd)
    #cur.execute(sqlcmd)

    # Find attribute del
    sqlcmd = sel_attribute.format(r[2]) 
    # print (sqlcmd)
    cur2.execute(sqlcmd)
    row2 = cur2.fetchone()
    if row2:
        attributes = row2[0]+',\n    '
    else:
        attributes = '    '

    # Opret view
    match element_gtype:
        case "f": sqlcmd = cre_view_f.format(schema_name=schema_name,view_name=view_name,element_type=element_type,workspace_name=workspace_name,attributes=attributes)
        case "l": sqlcmd = cre_view_l.format(schema_name=schema_name,view_name=view_name,element_type=element_type,workspace_name=workspace_name,attributes=attributes)
        case "p": sqlcmd = cre_view_p.format(schema_name=schema_name,view_name=view_name,element_type=element_type,workspace_name=workspace_name,attributes=attributes)
    print (sqlcmd)
    #cur.execute(sqlcmd)

cur2.close()
cur.close()
conn.commit()
conn.close()
