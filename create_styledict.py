# Constants

database="ballerup_park"
db_host="common-db.gc2.io"
db_user="ballerup_park"
db_pass="gaker9jI"
db_port="5432"
db_styletable="sweco_jsondata.styleinfo"    
resultfile = 'd:/projekter/ballerup/ballerup_style.json'



import xmltodict
import pprint
import json
import psycopg2



# functions

def cnv2hex(ind):
    val = ind.split(' ')
    hex = '#' + "0x%0.2X" % int(val[0]) +"0x%0.2X" % int(val[1]) +"0x%0.2X" % int(val[2]) 
    return hex.replace ('0x','')

# Forbindelse til stiltabel for SWECO
# For hver stil 
# Opret tomt dict element
# Find key, goup, type
# læg diise plus org dict ind i samle dict med nøgle key
# Konverter dict til json for mapcentia
#
#
#
#
# main

# Connection to DB

conn = psycopg2.connect(database=database, host=db_host, user=db_user, password=db_pass, port=db_port)
cur = conn.cursor()

cur.execute('SELECT * FROM {}'.format(db_styletable))
rows = cur.fetchall()

styles = {}

for r in rows:

    d={}
    d['key']=str(r[0])
    d['name']=str(r[1])
    d['groupname']=str(r[2])
    gc = str(r[3]).replace('class>','geoclass>')
    if gc != 'None' and gc != '':
        org = xmltodict.parse(gc)
        d['sweco'] = org['geoclass'] 
        styles[d['key'].upper()] = d 
        
out_file = open("styles.json", "w")
json.dump(styles, out_file, indent = 4)
out_file.close()
        
        

## Open the file and read the contents
#with open('example_2.xml', 'r', encoding='utf-8') as file:
#    my_xml = file.read()

