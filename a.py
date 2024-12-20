import requests
import json
import psycopg2
import time

START_PAGE= 1
PAGE_SIZE=50

DROP_ELEMENT_TABLE = True

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
GetElementsAllPaged = "{}/element/gets?ticket={}&page={}&limit="+str(PAGE_SIZE)
GetElementsAll = "{}/element/gets?ticket={}"
GetElementDetail = "{}/onsiteelement/get?id={}&ticket={}"
CreateElement = "{}/element/create?ticket={}"
UpdateElement = "{}/element/update?ticket={}"
DeleteElement = "{}/element/delete?ids={}&ticket={}"
GetWorkAreas = "{}/workarea/gets?workareatypeid={}&ticket={}&mappinglevel=3"
GetWorkAreasAll = "{}/workarea/gets?ticket={}&mappinglevel=3"
GetWorkAreasText = "{}/workarea/gets?workareatext={}&workareatypeid={}&ticket={}&mappinglevel=3"
GetWorkAreaDetail = "{}/workarea/get?id={}&ticket={}"

def request_ticket():
    r = requests.get(GettingAccessToken.format(address,username,password))
    return r

def request_e_page():
    try:
        r = requests.post(GetElementsAllPaged.format(address,ticket,page))
    except:
        print("Request timeout, retry 1, delay 0.2") 
        time.sleep(0.2)
        try:
            r = requests.post(GetElementsAllPaged.format(address,ticket,page))
        except:
            print("Request timeout, retry 2, delay 1.0") 
            time.sleep(1.0)
            r = requests.post(GetElementsAllPaged.format(address,ticket,page))

    return r

def request_e_detail (): 

    try:
        s = requests.get(GetElementDetail.format(address,id,ticket))
    except:
        print("Request timeout, retry 1, delay 0.2") 
        time.sleep(0.2)

        try:
            s = requests.get(GetElementDetail.format(address,id,ticket))
        except:
            print("Request timeout, retry 2, delay 1.0") 
            time.sleep(1.0)
            s = requests.get(GetElementDetail.format(address,id,ticket))

    return s
    
# Connection to DB
conn = psycopg2.connect(database=database, host=db_host, user=db_user, password=db_pass, port=db_port)
cur = conn.cursor()

# Ticket
t = request_ticket()
ticket = t.json()['value']['ticket']

# Element types
print('\nElement types')
print(  '=============\n')

cur.execute("DROP TABLE IF EXISTS sweco.elementtypes; CREATE TABLE sweco.elementtypes (gbid serial PRIMARY KEY, id UUID, jsondata jsonb);")
cur.execute("DROP TABLE IF EXISTS sweco.elementtypedetails; CREATE TABLE sweco.elementtypedetails (gbid serial PRIMARY KEY, id UUID, jsondata jsonb);")
cur.execute("TRUNCATE TABLE sweco.elementtypes;")
cur.execute("TRUNCATE TABLE sweco.elementtypedetails;")

r = requests.get(GetElementTypes.format(address,ticket))
types = r.json()['ElementTypes']
for i in types:
    id = i['Id']
    cur.execute('INSERT INTO sweco.elementtypes (id,jsondata) VALUES (\'{}\'::UUID,\'{}\'::JSONB)'.format(id,json.dumps(i).replace(r"'",r"''")))
    s = requests.get(GetElementTypeDetail.format(address,id,ticket))
    cur.execute('INSERT INTO sweco.elementtypedetails (id,jsondata) VALUES (\'{}\'::UUID,\'{}\'::JSONB)'.format(id,s.text.replace(r"'",r"''")))
    print (id)




# Workarea types
print('\nWorkarea types')
print(  '==============\n')

#cur.execute("DROP TABLE IF EXISTS sweco.workareatypes; CREATE TABLE sweco.workareatypes (gbid serial PRIMARY KEY, id UUID, jsondata jsonb);")
#cur.execute("DROP TABLE IF EXISTS sweco.workareatypedetails; CREATE TABLE sweco.workareatypedetails (gbid serial PRIMARY KEY, id UUID, jsondata jsonb);")
cur.execute("TRUNCATE TABLE sweco.workareatypes;")
cur.execute("TRUNCATE TABLE sweco.workareatypedetails;")

r = requests.get(GetWorkAreaTypes.format(address,ticket))
types = r.json()['WorkAreaTypes']

for i in types:
    id = i['Id']
    cur.execute('INSERT INTO sweco.workareatypes (id,jsondata) VALUES (\'{}\'::UUID,\'{}\'::JSONB)'.format(id,json.dumps(i).replace(r"'",r"''")))
    s = requests.get(GetWorkAreaTypeDetail.format(address,id,ticket))
    cur.execute('INSERT INTO sweco.workareatypedetails (id,jsondata) VALUES (\'{}\'::UUID,\'{}\'::JSONB)'.format(id,s.text.replace(r"'",r"''")))
    print (id)




# Elements
print('\nElements')
print(  '=========\n')

if DROP_ELEMENT_TABLE: 
    cur.execute("DROP TABLE IF EXISTS sweco.elements; CREATE TABLE sweco.elements (gbid serial PRIMARY KEY, id UUID, jsondata jsonb);")
    cur.execute("DROP TABLE IF EXISTS sweco.elementdetails; CREATE TABLE sweco.elementdetails (gbid serial PRIMARY KEY, id UUID, jsondata jsonb);")

page = START_PAGE

r = request_e_page()
pagecount = r.json()['TotalCount'] / PAGE_SIZE - START_PAGE + 1 

while page <= pagecount:

    print ('\npage {} / {} started'.format(page,pagecount))
    print (  '==========\n')
    QgsMessageLog.logMessage('page {} / {} started'.format(page,pagecount), 'SP log', level=Qgis.Info)

    try
        types = r.json()['Elements']
    except:
        print("Request output error, retry, delay 1.0") 
        time.sleep(1.0)
        r = request_e_page()
        types = r.json()['Elements']
   
    val_ele = ''    
    val_det = ''    

    for i in types:
        id = i['Id']
        val_ele += '(\'{}\'::UUID,\'{}\'::JSONB),'.format(id,json.dumps(i).replace(r"'",r"''"))

        s = request_e_detail()

        val_det += '(\'{}\'::UUID,\'{}\'::JSONB),'.format(id,s.text.replace(r"'",r"''"))
        print(str(id))
        
    cur.execute('INSERT INTO sweco.elements (id,jsondata) VALUES {};'.format(val_ele[: -1])) 
    cur.execute('INSERT INTO sweco.elementdetails (id,jsondata) VALUES {};'.format(val_det[: -1]))
    conn.commit()
    
    page += 1 
    r = request_e_page()

 Workareas
print('\nWorkareas')
print(  '=========\n')

cur.execute("DROP TABLE IF EXISTS sweco.workareas; CREATE TABLE sweco.workareas (gbid serial PRIMARY KEY, id UUID, jsondata jsonb);")
cur.execute("DROP TABLE IF EXISTS sweco.workareadetails; CREATE TABLE sweco.workareadetails (gbid serial PRIMARY KEY, id UUID, jsondata jsonb);")

r = requests.get(GetWorkAreasAll.format(address,ticket))

types = r.json()['WorkAreas']

for i in types:
    id = i['Id']
    print (id)
    cur.execute('INSERT INTO sweco.workareas (id,jsondata) VALUES (\'{}\'::UUID,\'{}\'::JSONB)'.format(id,json.dumps(i).replace(r"'",r"''")))
    s = requests.get(GetWorkAreaDetail.format(address,id,ticket))
    cur.execute('INSERT INTO sweco.workareadetails (id,jsondata) VALUES (\'{}\'::UUID,\'{}\'::JSONB)'.format(id,s.text.replace(r"'",r"''")))
 

conn.commit()
conn.close()
cur.close()

