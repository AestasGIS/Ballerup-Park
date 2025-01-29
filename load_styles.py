import json
import psycopg2

database="ballerup_park"
db_host="common-db.gc2.io"
db_user="ballerup_park"
db_pass="gaker9jI"
db_port="5432"

db_settings_table='settings.geometry_columns_join'
db_settings_where='vt_vintertjeneste.%'

style_file = "styles.json"

# Connection to DB
conn = psycopg2.connect(database=database, host=db_host, user=db_user, password=db_pass, port=db_port)
cur = conn.cursor()

# Load geometry_columns_view
cur.execute("SELECT * FROM {} WHERE _key_ like '{}'".format(db_settings_table,db_settings_where))
rows = cur.fetchall()

# Open style file with dict
style_file = open(style_file, "r", encoding="utf-8")

styles = json.load(style_file)

for r in rows:

    # Find style element in dict: Kolonne 2 "f_table_title" indeholder element navn 
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
