import requests
import json
import psycopg2

address = 'https://gmpark.dk/park/api/ballerup/onsite'
username = 'bvt@aestas.dk'
password = 'V1nt3r__2o23'

database="ballerup_park"
db_host="localhost"
db_user="postgres"
db_pass="ukulemy"
db_port="5432"
    
GettingAccessToken = "{}/signin?username={}&password={}"
GetElementTypes = "{}/elementtype/gets?ticket={}"
GetElementTypeDetail = "{}/elementtype/get?id={}&ticket={}"
GetWorkAreaTypes = "{}/workareatype/gets?ticket={}"
GetWorkAreaTypeDetail = "{}/workareatype/get?id={}&ticket={}"
GetElementsId = "{}/element/gets?ticket={}&elementTypeId={}"
GetElements = "{}/element/gets?ticket={}&page={}&limit={}&elementTypeId={}&elementText={}"
GetElementsText = "{}/element/gets?ticket={}&page={}&limit={}&elementText={}"
GetElementsAllPaged = "{}/element/gets?ticket={}&page={}&limit=50"
GetElementsAll = "{}/element/gets?ticket={}"
GetElementDetail = "{}/onsiteelement/get?id={}&ticket={}"
CreateElement = "{}/element/create?ticket={}"
UpdateElement = "{}/element/update?ticket={}"
DeleteElement = "{}/element/delete?ids={}&ticket={}"
GetWorkAreas = "{}/workarea/gets?workareatypeid={}&ticket={}&mappinglevel=3"
GetWorkAreasAll = "{}/workarea/gets?ticket={}&mappinglevel=3"
GetWorkAreasText = "{}/workarea/gets?workareatext={}&workareatypeid={}&ticket={}&mappinglevel=3"
GetWorkAreaDetail = "{}/workarea/get?id={}&ticket={}"
    
# Connection to DB
conn = psycopg2.connect(database=database, host=db_host, user=db_user, password=db_pass, port=db_port)
cur = conn.cursor()

# Create tables
#cur.execute("DROP TABLE IF EXISTS sweco_jsondata.elementtypes; CREATE TABLE sweco_jsondata.elementtypes (gbid serial PRIMARY KEY, id UUID, jsondata jsonb);")
#cur.execute("DROP TABLE IF EXISTS sweco_jsondata.elementtypedetails; CREATE TABLE sweco_jsondata.elementtypedetails (gbid serial PRIMARY KEY, id UUID, jsondata jsonb);")
#cur.execute("DROP TABLE IF EXISTS sweco_jsondata.workareatypes; CREATE TABLE sweco_jsondata.workareatypes (gbid serial PRIMARY KEY, id UUID, jsondata jsonb);")
#cur.execute("DROP TABLE IF EXISTS sweco_jsondata.workareatypedetails; CREATE TABLE sweco_jsondata.workareatypedetails (gbid serial PRIMARY KEY, id UUID, jsondata jsonb);")
#cur.execute("TRUNCATE TABLE sweco_jsondata.elementtypes;")
#cur.execute("TRUNCATE TABLE sweco_jsondata.elementtypedetails;")
#cur.execute("TRUNCATE TABLE sweco_jsondata.workareatypes;")
#cur.execute("TRUNCATE TABLE sweco_jsondata.workareatypedetails;")
#cur.execute("DROP TABLE IF EXISTS sweco_jsondata.elements; CREATE TABLE sweco_jsondata.elements (gbid serial PRIMARY KEY, id UUID, jsondata jsonb);")
#cur.execute("DROP TABLE IF EXISTS sweco_jsondata.elementdetails; CREATE TABLE sweco_jsondata.elementdetails (gbid serial PRIMARY KEY, id UUID, jsondata jsonb);")
#cur.execute("DROP TABLE IF EXISTS sweco_jsondata.workareas; CREATE TABLE sweco_jsondata.workareas (gbid serial PRIMARY KEY, id UUID, jsondata jsonb);")
#cur.execute("DROP TABLE IF EXISTS sweco_jsondata.workareadetails; CREATE TABLE sweco_jsondata.workareadetails (gbid serial PRIMARY KEY, id UUID, jsondata jsonb);")

# Ticket
r = requests.get(GettingAccessToken.format(address,username,password))
ticket = r.json()['value']['ticket']

## Element types
#print('Element types')
#r = requests.get(GetElementTypes.format(address,ticket))
#types = r.json()['ElementTypes']
#for i in types:
#    id = i['Id']
#    #cur.execute('INSERT INTO sweco_jsondata.elementtypes (id,jsondata) VALUES (\'{}\'::UUID,\'{}\'::JSONB)'.format(id,json.dumps(i).replace(r"'",r"''")))
#    s = requests.get(GetElementTypeDetail.format(address,id,ticket))
#    cur.execute('INSERT INTO sweco_jsondata.elementtypedetails (id,jsondata) VALUES (\'{}\'::UUID,\'{}\'::JSONB)'.format(id,s.text.replace(r"'",r"''")))
#    print (id)
#
## Workarea types
#print('Workarea types')
#r = requests.get(GetWorkAreaTypes.format(address,ticket))
#types = r.json()['WorkAreaTypes']
#
#for i in types:
#    id = i['Id']
#    #cur.execute('INSERT INTO sweco_jsondata.workareatypes (id,jsondata) VALUES (\'{}\'::UUID,\'{}\'::JSONB)'.format(id,json.dumps(i).replace(r"'",r"''")))
#    s = requests.get(GetWorkAreaTypeDetail.format(address,id,ticket))
#    cur.execute('INSERT INTO sweco_jsondata.workareatypedetails (id,jsondata) VALUES (\'{}\'::UUID,\'{}\'::JSONB)'.format(id,s.text.replace(r"'",r"''")))
#    print (id)
#
## Elements
print('Elements')
page = 2278
r = requests.post(GetElementsAllPaged.format(address,ticket,page))
pagecount = 1 + r.json()['TotalCount'] // 50

while page <= pagecount:

    print ('page {} / {}'.format(page,pagecount))
    types = r.json()['Elements']

    val_ele = ''    
    val_det = ''    

    for i in types:
        id = i['Id']
        # val_ele += '(\'{}\'::UUID,\'{}\'::JSONB),'.format(id,json.dumps(i).replace(r"'",r"''"))
        s = requests.get(GetElementDetail.format(address,id,ticket))
        val_det += '(\'{}\'::UUID,\'{}\'::JSONB),'.format(id,s.text.replace(r"'",r"''"))

#    cur.execute('INSERT INTO sweco_jsondata.elements (id,jsondata) VALUES {};'.format(val_ele[: -1])) 
    cur.execute('INSERT INTO sweco_jsondata.elementdetails (id,jsondata) VALUES {};'.format(val_det[: -1]))
    conn.commit()
    
    page += 1 
    r = requests.post(GetElementsAllPaged.format(address,ticket,page))

# Workareas
#print('Workareas')
#r = requests.get(GetWorkAreasAll.format(address,ticket))
#
#types = r.json()['WorkAreas']
#
#for i in types:
#    id = i['Id']
#    print (id)
#    #cur.execute('INSERT INTO sweco_jsondata.workareas (id,jsondata) VALUES (\'{}\'::UUID,\'{}\'::JSONB)'.format(id,json.dumps(i).replace(r"'",r"''")))
#    s = requests.get(GetWorkAreaDetail.format(address,id,ticket))
#    cur.execute('INSERT INTO sweco_jsondata.workareadetails (id,jsondata) VALUES (\'{}\'::UUID,\'{}\'::JSONB)'.format(id,s.text.replace(r"'",r"''")))
 

conn.commit()
conn.close()
cur.close()

