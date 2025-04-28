"""
-- View: vt_vintertjeneste.vt_haandrute_1_fdf

-- DROP VIEW vt_vintertjeneste.vt_haandrute_1_fdf;

SELECT ROW_NUMBER() OVER(), * FROM vt_vintertjeneste.vt_haandrute_1_fdf


DROP VIEW IF EXISTS vt_vintertjeneste.vt_haandrute_1_fdf_ny;

CREATE VIEW vt_vintertjeneste.vt_haandrute_1_fdf_ny
 AS
 SELECT 
    ROW_NUMBER() OVER() AS gid,
    0 AS ogc_fid,
    LOWER (a.etype_key) || '.' || a.id::text AS gml_id,
    a.id::text AS elementid,
    a.navn AS elementname,
    a.areal AS measure,
    a.omkreds AS perimeter,
    '' AS element_description,
    '' AS address,
    a.oprettet::text AS created,
    a.rettet::text AS updated,
    '' AS origin,
    a.etype_key AS elementtypekey,
    a.etype_navn AS elementtypename,
    'm2' AS unittype,
    'Polygon' AS geometrytype,
    'active' AS status,
     a.oprettet_af AS createdby,
    a.rettet_af AS updatedby,
    EXTRACT (DAY FROM now() - a.oprettet::Date) AS days_from_creation,
    EXTRACT (DAY FROM now() - a.rettet::Date) AS days_from_update,
    b.level_1_workareas AS level_1_workareas,
    b.level_1_workareastypes AS level_1_workareatypes,
    '' AS level_2_workareas,
    '' AS level_2_workareatypes,
	a.ekstra #>>'{AOT1,text}' AS att_aot1,
	a.ekstra #>>'{BeLTy,text}' AS att_belty,
	a.ekstra #>>'{BLT,text}' AS att_blt,
	a.ekstra #>>'{FKl,text}' AS att_fkl,
	a.ekstra #>>'{FR,text}' AS att_fr,
	a.ekstra #>>'{FTVR,text}' AS att_ftvr,
	a.ekstra #>>'{GFBM,text}' AS att_gfbm,
	a.ekstra #>>'{GaaGa,text}' AS att_gaaga,
	a.ekstra #>>'{HBR,text}' AS att_hbr,
	a.ekstra #>>'{KT,text}' AS att_kt,
	a.ekstra #>>'{RVSF,text}' AS att_rvsf,
	a.ekstra #>>'{TiSy,text}' AS att_tisy,
	a.ekstra #>>'{TUR,text}' AS att_tur,
	a.ekstra #>>'{TYPE,text}' AS att_type,
	a.ekstra #>>'{UE,text}' AS att_ue,
	a.ekstra #>>'{UER,text}' AS att_uer,
	a.ekstra #>>'{UKB,text}' AS att_ukb,
	a.ekstra #>>'{VeST,text}' AS att_vest,
	a.ekstra #>>'{ViHAr,text}' AS att_vihar,
	a.ekstra #>>'{ViRuH,text}' AS att_viruh,
	a.ekstra #>>'{ViRuSF,text}' AS att_virusf,
	a.ekstra #>>'{ViRuV,text}' AS att_viruv,
	a.ekstra #>>'{VTj,text}' AS att_vtj,
    a.geom
   FROM elementer.element_flader_ny a
   JOIN elementer.element_flader_workspaces_view b ON a.id = b.element_id
  WHERE a.etype_key = 'FDF' AND b.level_1_workareas::text ~~ '%VT Håndrute 1%'::text;


CREATE VIEW "{schema_name}"."{view_name}" AS
    SELECT 
        {ogc_fid}::integer AS ogc_fid, 
        {gml_id}::character varying AS gml_id, 
        {elementid}::character varying AS elementid, 
        {elementname}::character varying AS elementname, 
        {measure}::double precision AS measure, 
        {perimeter}::double precision} AS perimeter, 
        {element_description}::character varying AS element_description, 
        {address}::character varying AS address, 
        {created}::character varying AS created, 
        {updated}::character varying AS updated, 
        {origin}::character varying AS origin, 
        {elementtypekey}::character varying AS elementtypekey, 
        {elementtypename}::character varying AS elementtypename, 
        {unittype}::character varying AS unittype, 
        {geometrytype}::character varying AS geometrytype, 
        {status}::character varying AS status, 
        {createdby}::character varying AS createdby, 
        {updatedby}::character varying AS upda edby, 
        {days_from_creation}::double precisi n AS days_from_creation, 
        {days_from_update}::double precision AS days_from_update, 
        {level_1_workareas}::character varying AS level_1_workareas, 
        {level_1_workareatypes}::character varying AS level_1_workareatypes, 
        {level_2_workareas}::character varying AS level_2_workareas, 
        {level_2_workareatypes}::character varying AS level_2_workareatypes,
        {attributes},
        geom
	FROM "{element_schema}"."{element_table}" a
    JOIN "{workspace_schema}"."{aggr_workspace_view}" b ON a.element_id;

SELECT 
    agt.atype_navn, 
    ag.arbejdsgruppe_navn, 
    efa.niveau,
	ef.etype_key,
	ef.etype_navn,
	COUNT(*) AS ant
FROM arbejde.arbejdsgrupper ag
JOIN lookup.arbejdsgruppe_typer agt ON agt.atype_key = ag.atype_key
JOIN elementer.element_flader_arbejdsgrupper efa ON ag.arbejdsgruppe_id = efa.arbejdsgruppe_id
JOIN elementer.element_flader ef ON ef.id = efa.element_id
GROUP BY 1,2,3,4,5
ORDER BY 1,2,3,4,5
--WHERE a.arbejdsgruppe_navn LIKE '%'

SELECT 
    agt.atype_navn, 
    ag.arbejdsgruppe_navn, 
	COUNT(*) AS ant
FROM arbejde.arbejdsgrupper ag
JOIN lookup.arbejdsgruppe_typer agt ON agt.atype_key = ag.atype_key
JOIN elementer.element_flader_arbejdsgrupper efa ON ag.arbejdsgruppe_id = efa.arbejdsgruppe_id
JOIN elementer.element_flader ef ON ef.id = efa.element_id
GROUP BY 1,2
ORDER BY 1,2

SELECT 
    agt.atype_navn, 
    ag.arbejdsgruppe_navn, 
	COUNT(*) AS ant
FROM elementer.element_flader_arbejdsgrupper arbejde.arbejdsgrupper ag
JOIN lookup.arbejdsgruppe_typer agt ON agt.atype_key = ag.atype_key
JOIN elementer.element_flader_arbejdsgrupper efa ON ag.arbejdsgruppe_id = efa.arbejdsgruppe_id
JOIN elementer.element_flader ef ON ef.id = efa.element_id
GROUP BY 1,2
ORDER BY 1,2



SELECT 
    agt.atype_navn,
--  ag.arbejdsgruppe_navn,
--	ef.etype_navn,
--	ef.etype_key,
    COUNT(*)
FROM elementer.element_flader_arbejdsgrupper efa
JOIN elementer.element_flader ef ON ef.id = efa.element_id
JOIN arbejde.arbejdsgrupper ag ON ag.arbejdsgruppe_id = efa.arbejdsgruppe_id
JOIN lookup.arbejdsgruppe_typer agt ON agt.atype_key = ag.atype_key
GROUP BY 1
ORDER BY 1

WITH eflpa AS (
    SELECT efa.element_id, ef.etype_navn, ef.etype_key, efa.arbejdsgruppe_id, efa.niveau 
	    FROM elementer.element_flader_arbejdsgrupper efa 
	    JOIN elementer.element_flader ef ON ef.id = efa.element_id 
	UNION
    SELECT ela.element_id, el.etype_navn, el.etype_key, ela.arbejdsgruppe_id, ela.niveau 
	    FROM elementer.element_linjer_arbejdsgrupper ela 
	    JOIN elementer.element_linjer el ON el.id = ela.element_id 
	UNION
    SELECT epa.element_id, ep.etype_navn, ep.etype_key, epa.arbejdsgruppe_id, epa.niveau 
	    FROM elementer.element_punkter_arbejdsgrupper epa 
	    JOIN elementer.element_punkter ep ON ep.id = epa.element_id 
)
SELECT
    ag.arbejdsgruppe_navn,
	eflpa.etype_navn,
    COUNT(*)
 FROM eflpa
JOIN arbejde.arbejdsgrupper ag ON ag.arbejdsgruppe_id = eflpa.arbejdsgruppe_id
JOIN lookup.arbejdsgruppe_typer agt ON agt.atype_key = ag.atype_key
GROUP BY 1,2 order by 1,2

"""




workspace_filter = ''
view_schema_prefix='wst_'

# Under normale omstændigheder skal der *IKKE* laves rettelser under denne linje

sel_ag = """
SELECT 
    agt.atype_navn, 
    ag.arbejdsgruppe_navn, 
	COUNT(*) AS ant
FROM arbejde.arbejdsgrupper ag
JOIN lookup.arbejdsgruppe_typer agt ON agt.atype_key = ag.atype_key
JOIN elementer.element_flader_arbejdsgrupper efa ON ag.arbejdsgruppe_id = efa.arbejdsgruppe_id
JOIN elementer.element_flader ef ON ef.id = efa.element_id
GROUP BY 1,2
ORDER BY 1,2
"""

sel_ag_et = """
SELECT 
    agt.atype_navn, 
    ag.arbejdsgruppe_navn, 
    efa.niveau,
	ef.etype_key,
	ef.etype_navn,
	COUNT(*) AS ant
FROM arbejde.arbejdsgrupper ag
JOIN lookup.arbejdsgruppe_typer agt ON agt.atype_key = ag.atype_key
JOIN elementer.element_flader_arbejdsgrupper efa ON ag.arbejdsgruppe_id = efa.arbejdsgruppe_id
JOIN elementer.element_flader ef ON ef.id = efa.element_id
GROUP BY 1,2,3,4,5
ORDER BY 1,2,3,4,5
"""

cre_schema = """
DROP SCHEMA IF EXISTS "{schema_name}"; 
CREATE SCHEMA "{schema_name}"
"""
  
cre_view = """
DROP VIEW IF EXISTS "{schema_name}"."{view_name}";
CREATE VIEW "{schema_name}"."{view_name}" AS
    SELECT 
        {ogc_fid}::integer AS ogc_fid, 
        {gml_id}::character varying AS gml_id, 
        {elementid}::character varying AS elementid, 
        {elementname}::character varying AS elementname, 
        {measure}::double precision AS measure, 
        {perimeter}::double precision} AS perimeter, 
        {element_description}::character varying AS element_description, 
        {address}::character varying AS address, 
        {created}::character varying AS created, 
        {updated}::character varying AS updated, 
        {origin}::character varying AS origin, 
        {elementtypekey}::character varying AS elementtypekey, 
        {elementtypename}::character varying AS elementtypename, 
        {unittype}::character varying AS unittype, 
        {geometrytype}::character varying AS geometrytype, 
        {status}::character varying AS status, 
        {createdby}::character varying AS createdby, 
        {updatedby}::character varying AS upda edby, 
        {days_from_creation}::double precisi n AS days_from_creation, 
        {days_from_update}::double precision AS days_from_update, 
        {level_1_workareas}::character varying AS level_1_workareas, 
        {level_1_workareatypes}::character varying AS level_1_workareatypes, 
        {level_2_workareas}::character varying AS level_2_workareas, 
        {level_2_workareatypes}::character varying AS level_2_workareatypes,
        {attributes},
        geom
	FROM "{element_schema}"."{element_table}" a
    JOIN "{workspace_schema}"."{aggr_workspace_view}" b ON a.element_id;
"""

# Connection to MapCentia database,
db_host="common-db.gc2.io"
db_port="5432"
db_user="ballerup_park"
db_pass="gaker9jI"
database="ballerup_park"

wt = 'arbejde.arbejdsgrupper'

etf = 'elementer.element_flader'
etl = 'elementer.element_linjer'
etp = 'elementer.element_punkter'

etfa = = 'elementer.element_flader_arbejdsgrupper'
etla = = 'elementer.element_linjer_arbejdsgrupper'
etpa = = 'elementer.element_punkter_arbejdsgrupper'

# Placement of json style file. Normally placed i same directory as Python script
style_file = "styles.json"

# Imports
import json
import psycopg2

# Connection to DB
conn = psycopg2.connect(database=database, host=db_host, user=db_user, password=db_pass, port=db_port)
cur = conn.cursor()

# 
# Find valgte arbejdsgrupper 
# Løb alle igennem
# 
# Hvis arbejdsgruppe navn har skiftet, så 
#     Lav arbejdsgruppenavn om til schemanavn
#     Hvis schema eksisterer drop schema; opret nyt schema
#     sæt reference schema 
# Hvis view eksisterer drop view; Opret view med arbejdsgruppe og elementtype
#
#
#
#
#
#
#
#
#
#
#
#
#
#







# Load geometry_columns_view using predefined values
cur.execute("SELECT * FROM {} WHERE _key_ like '{}'".format(db_settings_table,db_settings_where))
rows = cur.fetchall()

# Open style file and convert to dict
style_file = open(style_file, "r", encoding="utf-8")
styles = json.load(style_file)


# For every selected table 
for r in rows:

    # Find style element in dict: Column 2 (zero based), "f_table_title" contains title, incl. element name 
    if r[2]:
        re = r[2].split(' ')[0].upper()    
        print (re)
        if re in styles:           
            rstyle = json.dumps(styles[re]['mapcentia'])
            sqlcmd = "UPDATE {} SET class= '[{}]' WHERE _key_ = '{}';".format(db_settings_table,rstyle.replace("'","''"),r[0])
            print(sqlcmd)
            cur.execute(sqlcmd)

cur.close()
conn.commit()
conn.close()
