
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

look = {}
cur.execute('SELECT * FROM lookup.attribute_validation')
attr = cur.fetchall()
for a in attr:
    if a[0] not in look: look[a[0]] = {}
    look[a[0]][a[1]] = a[2]

# Løb alle elementer_linjer igennem

cur.execute('SELECT * FROM elementer.element_linjer_tmp')
rows = cur.fetchall()

i = 0
for r in rows:

    js = r[7]
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

    sqlcmd = 'UPDATE elementer.element_linjer_tmp SET ekstra = \'{}\'::JSONB WHERE id = \'{}\'::UUID;'.format(json.dumps(res, ensure_ascii = False).replace ("'","''"),r[0])
#    print(sqlcmd)
    cur.execute(sqlcmd)
    if i % 100 == 0 : print (i) 

cur.close()
conn.commit()
conn.close()
