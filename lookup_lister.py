#------------------------------------------------- Start constants ---------------------------

SELECT_JSON = "SELECT DISTINCT ON (jsondata #>> '{0}'::text[]) jsondata #>> '{0}'::text[] AS et_key, jsondata FROM {1}"

CREATE_SCHEMA = 'CREATE SCHEMA IF NOT EXISTS "{}";'

CREATE_TABLE_ATTR = '''
CREATE TABLE IF NOT EXISTS "{}"."{}" (
  id TEXT, 
  key TEXT, 
  name TEXT, 
  parent_id TEXT,
  datatype TEXT,
  readonly TEXT,
  mandatory TEXT,
  description TEXT,
  defaultvalue TEXT,
  displayorder TEXT,
  validationmax TEXT,
  validationmin TEXT,
  shortdescription TEXT,
  PRIMARY KEY(key)
);
'''
INSERT_ATTR = 'INSERT INTO "{}"."{}" VALUES (\'{}\',\'{}\',\'{}\',\'{}\',\'{}\',\'{}\',\'{}\',\'{}\',\'{}\',\'{}\',\'{}\',\'{}\',\'{}\') ON CONFLICT DO NOTHING;'

CREATE_TABLE_VAL = '''
CREATE TABLE IF NOT EXISTS "{}"."{}" (
  key_attr TEXT,
  id TEXT,
  key TEXT,
  name TEXT,
  defaultvalue TEXT,
  parentid TEXT,
  description TEXT,
  PRIMARY KEY(key_attr, key)
);
'''
INSERT_VAL = 'INSERT INTO "{}"."{}" VALUES (\'{}\',\'{}\',\'{}\',\'{}\',\'{}\',\'{}\') ON CONFLICT DO NOTHING;'

CREATE_TABLE_CONN = '''
CREATE TABLE IF NOT EXISTS "{}"."{}" (
  key_ele TEXT,
  key_attr TEXT,
  PRIMARY KEY(key_ele, key_attr)
);
'''
INSERT_CONN = 'INSERT INTO "{}"."{}" VALUES (\'{}\',\'{}\') ON CONFLICT DO NOTHING;'

SCHEMA = 'lookup'
TABLE_ATTR = 'attributes'
TABLE_CONN = 'connections'
TABLE_VAL = 'values'

DATABASE="ballerup_oktober2"
DB_HOST="localhost"
DB_USER="postgres"
DB_PASS="ukulemy"
DB_PORT="5433"
JSON_NAME = "{ElementTypeKey}"
DB_TABLE = '"sweco"."elementdetails"'

#------------------------------------------------- Start program ---------------------------
import json
import psycopg2
import requests

# Connection to DB
conn = psycopg2.connect(database=DATABASE, host=DB_HOST, user=DB_USER, password=DB_PASS, port=DB_PORT)
cur = conn.cursor()

# Opret schema og basale tabeller
cur.execute(CREATE_SCHEMA.format(SCHEMA))
cur.execute(CREATE_TABLE_ATTR.format(SCHEMA,TABLE_ATTR))
cur.execute(CREATE_TABLE_CONN.format(SCHEMA,TABLE_CONN))
cur.execute(CREATE_TABLE_VAL.format(SCHEMA,TABLE_VAL))

# Hent json vha SQL 
cur.execute(SELECT_JSON.format(JSON_NAME,DB_TABLE))
 
rows = cur.fetchall()
for row in rows:
    et_key = row[0]
    if et_key:
        print(et_key)
        jd = row[1]

        eti = jd["ElementTypeId"]
        etk = jd["ElementTypeKey"]
        etn = jd["ElementTypeName"]
        ea_liste = jd["ElementAttributes"]
        
        for ea in ea_liste:
            ea_id = ea["Id"]
            ea_key = ea["Key"]
            ea_name = ea["Name"]
            if ea["Parent"] : 
                ea_parent_id = ea["Parent"]["Id"]
            else:
                ea_parent_id = ''
            ea_datatype = ea["DataType"]
            ea_readonly = ea["ReadOnly"]
            ea_mandatory = ea["Mandatory"]
            ea_description = ea["Description"]
            ea_defaultvalue = ea["DefaultValue"]
            ea_displayorder = ea["DisplayOrder"]
            ea_validationmax = ea["ValidationMax"]
            ea_validationmin = ea["ValidationMin"]
            ea_shortdescription = ea["ShortDescription"]
            ea_validationvalues = ea["ValidationValues"]
        
            cur.execute(INSERT_ATTR.format(SCHEMA,TABLE_ATTR,ea_id,ea_key,ea_name,ea_parent_id,ea_datatype,ea_readonly,ea_mandatory,ea_description,ea_defaultvalue,ea_displayorder,ea_validationmax,ea_validationmin,ea_shortdescription))
            cur.execute(INSERT_CONN.format(SCHEMA,TABLE_CONN,etk,ea_key))
        
            if ea_validationvalues:
        
                for vv in ea_validationvalues:
                    vv_id = vv["Id"]
                    vv_key = vv["Key"]
                    vv_name = vv["Name"].replace ("'",r"''")
                    vv_default = vv["Default"]
                    vv_parentid = vv["ParentId"]
                    vv_description = vv["Description"]
                    cur.execute(INSERT_VAL.format(SCHEMA,TABLE_VAL,ea_key,vv_id,vv_key,vv_name,vv_default,vv_parentid,vv_description))
       
conn.commit()
conn.close()
cur.close()

#GettingAccessToken = "{}/signin?username={}&password={}"
#GetElementTypes = "{}/elementtype/gets?ticket={}"
#GetElementTypeDetail = "{}/elementtype/get?id={}&ticket={}"
#GetWorkAreaTypes = "{}/workareatype/gets?ticket={}"
#GetWorkAreaTypeDetail = "{}/workareatype/get?id={}&ticket={}"
#GetElementsId = "{}/element/gets?ticket={}&elementTypeId={}"
#GetElements = "{}/element/gets?ticket={}&page={}&limit={}&elementTypeId={}&elementText={}"
#GetElementsAllPaged = "{}/element/gets?ticket={}&page={}&limit=50"
#GetElementsAll = "{}/element/gets?ticket={}"
#GetElementDetail = "{}/onsiteelement/get?id={}&ticket={}"
#CreateElement = "{}/element/create?ticket={}"
#UpdateElement = "{}/element/update?ticket={}"
#DeleteElement = "{}/element/delete?ids={}&ticket={}"
#GetWorkAreas = "{}/workarea/gets?workareatypeid={}&ticket={}&mappinglevel=3"
#GetWorkAreasAll = "{}/workarea/gets?ticket={}&mappinglevel=3"
#GetWorkAreasText = "{}/workarea/gets?workareatext={}&workareatypeid={}&ticket={}&mappinglevel=3"
#GetWorkAreaDetail = "{}/workarea/get?id={}&ticket={}"
    

#address = 'https://gmpark.dk/park/api/ballerup/onsite'
#username = 'bvt@aestas.dk'
#password = 'S0mm3r__2o24'




## Ticket
#r = requests.get(GettingAccessToken.format(address,username,password))
#ticket = r.json()['value']['ticket']
#
## Element types
#print('Element types')
#r = requests.get(GetElementTypes.format(address,ticket))
#types = r.json()['ElementTypes']
#for i in types:
#    id = i['Id']
#    cur.execute('INSERT INTO sweco.elementtypes (id,jsondata) VALUES (\'{}\'::UUID,\'{}\'::JSONB)'.format(id,json.dumps(i).replace(r"'",r"''")))
#    s = requests.get(GetElementTypeDetail.format(address,id,ticket))
#    cur.execute('INSERT INTO sweco.elementtypedetails (id,jsondata) VALUES (\'{}\'::UUID,\'{}\'::JSONB)'.format(id,s.text.replace(r"'",r"''")))
#    print (id)
#
