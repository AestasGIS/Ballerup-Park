# Konvertering af SWECO Park styles til MapCentia styles
# ======================================================
#
# Systemet består af 3 dele;
# 
# 1) en json-fil "styles.json", som indeholder oversættelser 
#    mellem element navn til pre-definerede MapCentia style definitioner
# 
# 2) et python script "load_styles.py", som læser alle tabel definitioner, finder 
#    elemetype for tabel og opdaterer style for tabel baseret 
#    på den fundne element type
# 
# 3) Kommando procedure "load_styles.cmd", som start python fortolker med 
#    ovenstående python script. 
#    NB! Kommando procedure skal tilpasses mappenavn for QGIS installation
#    Se kommentar i kommandprocedure   
# 
# Installer de tre filer i samme vilkårlige mappe og start konvewrtering 
# ved at dobbeltklikke på "load_styles.cmd" i stifinder

# Konstant: "db_settings_where" er et del af et SQL "like" søgeudtryk, som
# afgrænser hvilke tabeller/views hvor udseendet skal tilrettes. 

# Eksempler for værdier..........
#db_settings_where='vt_vintertjeneste.%' -- Alle tabeller i schema vt_vintertjeneste
#db_settings_where='sk_skoler.%' -- Alle tabeller i schema sk_skoler
#db_settings_where='%' -- Alle tabeller i hele databasen (brug denne MEGET varsomt)

db_settings_where='da_daginstitutioner.%'

# Under normale omstændigheder skal der *IKKE* laves rettelser under denne linje

# Connection to MapCentia database,
db_host="common-db.gc2.io"
db_port="5432"
db_user="ballerup_park"
db_pass="gaker9jI"
database="ballerup_park"
db_settings_table='settings.geometry_columns_join'

# Placement of json style file. Normally placed i same directory as Python script
style_file = "styles.json"

# Imports
import json
import psycopg2

# Connection to DB
conn = psycopg2.connect(database=database, host=db_host, user=db_user, password=db_pass, port=db_port)
cur = conn.cursor()

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
