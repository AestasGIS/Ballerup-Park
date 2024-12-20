# Constants

database="ballerup_park"
db_host="common-db.gc2.io"
db_user="ballerup_park"
db_pass="gaker9jI"
db_port="5432"
db_styletable="sweco_jsondata.styleinfo"    
resultfile = 'd:/projekter/ballerup/ballerup_style.json'

# Imports
import xmltodict
import pprint
import json
import psycopg2

# functions

def cnv2hex(ind):
    val = ind.split(' ')
    hex = '#' + "0x%0.2X" % int(val[0]) +"0x%0.2X" % int(val[1]) +"0x%0.2X" % int(val[2]) 
    return hex.replace ('0x','')


# main

# Connection to DB

conn = psycopg2.connect(database=database, host=db_host, user=db_user, password=db_pass, port=db_port)
cur = conn.cursor()

cur.execute('SELECT * FROM {}'.format(db_styletable))
rows = cur.fetchall()

styles = {}

for r in rows:

    d={}
    d['geomstyle']=str(r[3]).replace('class>','geoclass>')
    if d['geomstyle'] != 'None':



# Use xmltodict to parse and convert the 
# XML document
my_dict = xmltodict.parse(my_xml)

# Print the dictionary
pprint.pprint(my_dict, indent=2)

# Open the file and read the contents
with open('example_2.xml', 'r', encoding='utf-8') as file:
    my_xml = file.read()

