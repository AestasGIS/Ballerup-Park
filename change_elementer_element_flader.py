
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
--DROP TABLE IF EXISTS elementer.element_flader_ny CASCADE;
--CREATE TABLE elementer.element_flader_ny  AS 
--    SELECT * FROM elementer.element_flader;
--ALTER TABLE IF EXISTS elementer.element_flader_ny
ALTER TABLE IF EXISTS elementer.element_flader
--    ADD CONSTRAINT element_flader_ny_pkey PRIMARY KEY (id),
    ADD COLUMN beskrivelse character varying COLLATE pg_catalog."default",
    ADD COLUMN adresse character varying COLLATE pg_catalog."default",
    ADD COLUMN oprindelse character varying COLLATE pg_catalog."default",
    ADD COLUMN oprettet timestamp without time zone,
    ADD COLUMN oprettet_af character varying COLLATE pg_catalog."default",
    ADD COLUMN rettet timestamp without time zone,
    ADD COLUMN rettet_af character varying COLLATE pg_catalog."default";
--CREATE INDEX ON elementer.element_flader_ny USING gist (geom);
--UPDATE elementer.element_flader_ny a
UPDATE elementer.element_flader a
    SET 
        beskrivelse = b.element_description,
        adresse = b.address,
        oprindelse = b.origin,
        oprettet = b.created::timestamp without time zone,
        oprettet_af = b.createdby,
        rettet = b.updated::timestamp without time zone,
        rettet_af = b.updatedby
    FROM driftweb.tot_elements_all b
    WHERE a.id = b.elementid::UUID;
"""

# print ('Opret tabel elementer.element_flader_ny') 
print ('Opdater tabel elementer.element_flader') 
print (crea_ny) 
cur.execute(crea_ny)
conn.commit()

print ('Hent validation værdier') 
look = {}
cur.execute('SELECT * FROM lookup.attribute_validation')
attr = cur.fetchall()

for a in attr:
    if a[0] not in look: look[a[0]] = {}
    look[a[0]][a[1]] = a[2]

# Løb alle elementer_flader igennem

#print ('Opdater tabel elementer.element_flader_ny / ekstra') 
#cur.execute('SELECT * FROM elementer.element_flader_ny')
print ('Opdater tabel elementer.element_flader / ekstra') 
cur.execute('SELECT * FROM elementer.element_flader')
rows = cur.fetchall()

i = 0
for r in rows:

    js = r[8]
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

#    sqlcmd = 'UPDATE elementer.element_flader_ny SET ekstra = \'{}\'::JSONB WHERE id = \'{}\'::UUID;'.format(json.dumps(res, ensure_ascii = False).replace ("'","''"),r[0])
    sqlcmd = 'UPDATE elementer.element_flader SET ekstra = \'{}\'::JSONB WHERE id = \'{}\'::UUID;'.format(json.dumps(res, ensure_ascii = False).replace ("'","''"),r[0])
    cur.execute(sqlcmd)

    print (i)

cur.close()
conn.commit()
conn.close()
