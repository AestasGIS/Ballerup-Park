# Constants

database="ballerup_park"
db_host="common-db.gc2.io"
db_user="ballerup_park"
db_pass="gaker9jI"
db_port="5432"
db_styletable="sweco_jsondata.styleinfo"    
resultfile = 'd:/projekter/ballerup/ballerup_style.json'

CLASS_POINT = '[{{"sortid":10,"name":"{name}","expression":"","label":false,"label_size":"","label_color":"","color":"{color}","outlinecolor":"{ocolor}","symbol":"{symbol}","angle":"","size":"{size}","width":"{width}","overlaycolor":"","overlayoutlinecolor":"","overlaysymbol":"","overlaysize":"","overlaywidth":"","label_text":"","label_position":"","label_font":"","label_fontweight":"","label_angle":"","label_backgroundcolor":"","style_opacity":"","overlaystyle_opacity":"","label_force":""}}]'
CLASS_LINE=   '[{{"sortid":10,"name":"{name}","expression":"","label":false,"label_size":"","label_color":"","color":"{color}","outlinecolor":"{ocolor}","symbol":"{symbol}","angle":"","size":"{size}","width":"{width}","overlaycolor":"","overlayoutlinecolor":"","overlaysymbol":"","overlaysize":"","overlaywidth":"","label_text":"","label_position":"","label_font":"","label_fontweight":"","label_angle":"","label_backgroundcolor":"","style_opacity":"","overlaystyle_opacity":"","label_force":""}}]'
CLASS_POLYGON='[{{"sortid":10,"name":"{name}","expression":"","label":false,"label_size":"","label_color":"","color":"{color}","outlinecolor":"{ocolor}","symbol":"{symbol}","angle":"","size":"{size}","width":"{width}","overlaycolor":"","overlayoutlinecolor":"","overlaysymbol":"","overlaysize":"","overlaywidth":"","label_text":"","label_position":"","label_font":"","label_fontweight":"","label_angle":"","label_backgroundcolor":"","style_opacity":"","overlaystyle_opacity":"","label_force":false,"id":0,"class_minscaledenom":"","class_maxscaledenom":"","leader":false,"leader_gridstep":"","leader_maxdistance":"","leader_color":"","pattern":"","linecap":"","geomtransform":"","minsize":"","maxsize":"","style_offsetx":"","style_offsety":"","style_polaroffsetr":"","style_polaroffsetd":"","overlaypattern":"","overlaylinecap":"","overlayangle":"","overlaygeomtransform":"","overlayminsize":"","overlaymaxsize":"","overlaystyle_offsetx":"","overlaystyle_offsety":"","overlaystyle_polaroffsetr":"","overlaystyle_polaroffsetd":"","label_minscaledenom":"","label_maxscaledenom":"","label_outlinecolor":"","label_buffer":"","label_repeatdistance":"","label_backgroundpadding":"","label_offsetx":"","label_offsety":"","label_expression":"","label_maxsize":"","label_minfeaturesize":"","label2":false,"label2_text":"","label2_force":false,"label2_minscaledenom":"","label2_maxscaledenom":"","label2_position":"","label2_size":"","label2_font":"","label2_fontweight":"","label2_color":"","label2_outlinecolor":"","label2_buffer":"","label2_repeatdistance":"","label2_angle":"","label2_backgroundcolor":"","label2_backgroundpadding":"","label2_offsetx":"","label2_offsety":"","label2_expression":"","label2_maxsize":"","label2_minfeaturesize":""}}]'  


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


# For hver stil 
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

# Create empty styles dict to be filled
styles = {}

cur.execute('SELECT * FROM {}'.format(db_styletable))
rows = cur.fetchall()

# For every style in table..
for r in rows:

    # Check if geoclass is empty
        if str(r[3]) != 'None' and str(r[3]) != '':
            # Create one-style empty dict and main elements
            d={}
            d['key']=str(r[0])
            d['name']=str(r[1])
            d['groupname']=str(r[2])
    
            # Convert geoclass to MapCentia class.
            gc = str(r[3]).replace('class>','geoclass>')
            org = xmltodict.parse(gc)
            
            # Save org. SWECO class definition
            d['sweco'] = org['geoclass']
                        

            # Point type
            if d['groupname'] == 'Point':


            # Line type
            if d['groupname'] == 'Line':


            # Polygon type or Workarea type
            if d['groupname'] == 'Workarea' or d['groupname'] == 'Polygon':
















    
    
    
    
    
    
    
    
            # Save style under key value in styles dict.  
            styles[d['key'].upper()] = d

#Open save file.
out_file = open("styles.json", "w")

# Save styles dict as json in file
json.dump(styles, out_file, indent = 4)
out_file.close()
        
        

## Open the file and read the contents
#with open('example_2.xml', 'r', encoding='utf-8') as file:
#    my_xml = file.read()




        if d['groupname'] == 'Point':

            d['name']=dd.geoclass.name.cdata
            d['color']=''
            d['ocolor']=''
            for dgs in dd.geoclass.style:
                try:
                    if d['color'] == '': d['color']=cnv2hex(dgs.color.cdata)
                except:
                    pass
                try:
                    if d['ocolor'] == '': d['ocolor']=cnv2hex(dgs.outlinecolor.cdata)
                except:
                    pass
            d['symbol']='circle'
            d['size']='8'
            d['width']='2'
            d['layergroup']='Punkter'

        if d['groupname'] == 'Line':
            d['name']=dd.geoclass.name.cdata
            d['color']=''
            d['ocolor']=''
            for dgs in dd.geoclass.style:
                try:
                    if d['color'] == '': d['color']=cnv2hex(dgs.color.cdata)
                except:
                    pass
                try:
                    if d['ocolor'] == '': d['ocolor']=cnv2hex(dgs.outlinecolor.cdata)
                except:
                    pass
            d['symbol']='circle'
            d['size']='8'
            d['width']='2'
            d['layergroup']='Linier'

        if d['groupname'] == 'Polygon':
            d['name']=dd.geoclass.name.cdata
            d['color']=''
            d['ocolor']=''
            for dgs in dd.geoclass.style:
                try:
                    if d['color'] == '': d['color']=cnv2hex(dgs.color.cdata)
                except:
                    pass
                try:
                    if d['ocolor'] == '': d['ocolor']=cnv2hex(dgs.outlinecolor.cdata)
                except:
                    pass
            d['symbol']='circle'
            d['size']='8'
            d['width']='2'
            d['layergroup']='Flader'

        if d['groupname'] == 'Workarea':
            d['name']=dd.geoclass.name.cdata
            d['color']=''
            d['ocolor']=''
            for dgs in dd.geoclass.style:
                try:
                    if d['color'] == '': d['color']=cnv2hex(dgs.color.cdata)
                except:
                    pass
                try:
                    if d['ocolor'] == '': d['ocolor']=cnv2hex(dgs.outlinecolor.cdata)
                except:
                    pass
            d['symbol']='circle'
            d['size']='8'
            d['width']='2'
            d['layergroup']='Arbejdsomraader'
        
        key = str(r[0])
        key = key.upper()




