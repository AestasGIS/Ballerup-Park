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
DROP TABLE IF EXISTS "{schema_name}"."{view_name}";
CREATE VIEW "{schema_name}"."{view_name}" AS
    SELECT 
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
