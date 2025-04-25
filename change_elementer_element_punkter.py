
# Connection to MapCentia database,
db_host="common-db.gc2.io"
db_port="5432"
db_user="ballerup_park"
db_pass="gaker9jI"
database="ballerup_park"

# Imports
import json
import psycopg2

# Connection to DB
conn = psycopg2.connect(database=database, host=db_host, user=db_user, password=db_pass, port=db_port)
cur = conn.cursor()

# 
crea_ny = """
DROP TABLE IF EXISTS elementer.element_punkter_ny CASCADE;
CREATE TABLE elementer.element_punkter_ny  AS 
    SELECT * FROM elementer.element_punkter;
ALTER TABLE IF EXISTS elementer.element_punkter_ny
    ADD CONSTRAINT element_punkter_ny_pkey PRIMARY KEY (id);
CREATE INDEX ON elementer.element_punkter_ny USING gist (geom);
"""

print ('Opret tabel elementer.element_punkter_ny') 
cur.execute(crea_ny)

print ('Hent validation værdier') 
look = {}
cur.execute('SELECT * FROM lookup.attribute_validation')
attr = cur.fetchall()

for a in attr:
    if a[0] not in look: look[a[0]] = {}
    look[a[0]][a[1]] = a[2]

# Løb alle elementer_punkter igennem

print ('Opdater tabel elementer.element_punkter_ny / ekstra') 
cur.execute('SELECT * FROM elementer.element_punkter_ny')
rows = cur.fetchall()

i = 0
for r in rows:

    js = r[6]
    res = {}
    if js:
        for attr, value in js.items():
            if attr in look:
                if value in look[attr]:
                    res[attr] = {'value' : value, 'text': look[attr][value]}
                else: 
                    res[attr] = {'value' : value, 'text': '' if value == '' else '***'}
            else: 
                res[attr] = {'value' : value, 'text': value}

    i += 1
#    if i >20: break

    sqlcmd = 'UPDATE elementer.element_punkter_ny SET ekstra = \'{}\'::JSONB WHERE id = \'{}\'::UUID;'.format(json.dumps(res, ensure_ascii = False).replace ("'","''"),r[0])
    cur.execute(sqlcmd)

    if i % 100 == 0 : print (i) 

cur.close()
conn.commit()
conn.close()
