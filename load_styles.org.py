import requests
import json
import psycopg2
#import xmltodict
import untangle

def cnv2hex(ind):
    val = ind.split(' ')
    hex = '#' + "0x%0.2X" % int(val[0]) +"0x%0.2X" % int(val[1]) +"0x%0.2X" % int(val[2]) 
    return hex.replace ('0x','')

CLASS_POINT = '[{{"sortid":10,"name":"{name}","expression":"","label":false,"label_size":"","label_color":"","color":"{color}","outlinecolor":"{ocolor}","symbol":"{symbol}","angle":"","size":"{size}","width":"{width}","overlaycolor":"","overlayoutlinecolor":"","overlaysymbol":"","overlaysize":"","overlaywidth":"","label_text":"","label_position":"","label_font":"","label_fontweight":"","label_angle":"","label_backgroundcolor":"","style_opacity":"","overlaystyle_opacity":"","label_force":""}}]'
CLASS_LINE=   '[{{"sortid":10,"name":"{name}","expression":"","label":false,"label_size":"","label_color":"","color":"{color}","outlinecolor":"{ocolor}","symbol":"{symbol}","angle":"","size":"{size}","width":"{width}","overlaycolor":"","overlayoutlinecolor":"","overlaysymbol":"","overlaysize":"","overlaywidth":"","label_text":"","label_position":"","label_font":"","label_fontweight":"","label_angle":"","label_backgroundcolor":"","style_opacity":"","overlaystyle_opacity":"","label_force":""}}]'
CLASS_POLYGON='[{{"sortid":10,"name":"{name}","expression":"","label":false,"label_size":"","label_color":"","color":"{color}","outlinecolor":"{ocolor}","symbol":"{symbol}","angle":"","size":"{size}","width":"{width}","overlaycolor":"","overlayoutlinecolor":"","overlaysymbol":"","overlaysize":"","overlaywidth":"","label_text":"","label_position":"","label_font":"","label_fontweight":"","label_angle":"","label_backgroundcolor":"","style_opacity":"","overlaystyle_opacity":"","label_force":false,"id":0,"class_minscaledenom":"","class_maxscaledenom":"","leader":false,"leader_gridstep":"","leader_maxdistance":"","leader_color":"","pattern":"","linecap":"","geomtransform":"","minsize":"","maxsize":"","style_offsetx":"","style_offsety":"","style_polaroffsetr":"","style_polaroffsetd":"","overlaypattern":"","overlaylinecap":"","overlayangle":"","overlaygeomtransform":"","overlayminsize":"","overlaymaxsize":"","overlaystyle_offsetx":"","overlaystyle_offsety":"","overlaystyle_polaroffsetr":"","overlaystyle_polaroffsetd":"","label_minscaledenom":"","label_maxscaledenom":"","label_outlinecolor":"","label_buffer":"","label_repeatdistance":"","label_backgroundpadding":"","label_offsetx":"","label_offsety":"","label_expression":"","label_maxsize":"","label_minfeaturesize":"","label2":false,"label2_text":"","label2_force":false,"label2_minscaledenom":"","label2_maxscaledenom":"","label2_position":"","label2_size":"","label2_font":"","label2_fontweight":"","label2_color":"","label2_outlinecolor":"","label2_buffer":"","label2_repeatdistance":"","label2_angle":"","label2_backgroundcolor":"","label2_backgroundpadding":"","label2_offsetx":"","label2_offsety":"","label2_expression":"","label2_maxsize":"","label2_minfeaturesize":""}}]'  


database="ballerup_park"
db_host="common-db.gc2.io"
db_user="ballerup_park"
db_pass="gaker9jI"
db_port="5432"
db_styletable="sweco_jsondata.styleinfo"    
db_settingstable="settings.geometry_columns_join"

# Connection to DB
conn = psycopg2.connect(database=database, host=db_host, user=db_user, password=db_pass, port=db_port)
cur = conn.cursor()
cur2 = conn.cursor()

cur.execute('SELECT * FROM {}'.format(db_styletable))
rows = cur.fetchall()

styles = {}

for r in rows:

    d={}
    d['geomstyle']=str(r[3]).replace('class>','geoclass>')
    if d['geomstyle'] != 'None':

        d['title']=str(r[1])
        d['groupname']=str(r[2])
        
        dd = untangle.parse (d['geomstyle'])
        
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
            
        #print ('{}:\t{}\t{}\t{}\t{}\t{}'.format(key, d['layergroup'], d['title'],d['name'], d['color'], d['ocolor']))
        
        styles[key] = d

cur.execute("SELECT _key_ FROM {} where _key_ ilike 'driftweb.%.geom'".format(db_settingstable))
layers = cur.fetchall()

for l in layers:
    key2 = str(l[0])
    key1 = key2.split('.')
    if len(key1) != 3: print ('Table name contains period sign: {}'.format(key2))
    key2 = key2.replace('driftweb.','').replace('.geom','')
    key2 = key2.upper()
#    print('-- '+key2+' --')

    try: 
        color = styles [key2]['color']
        ocolor = styles [key2]['ocolor']
        symbol = styles [key2]['symbol']
        size = styles [key2]['size']
        width = styles [key2]['width']
        layergroup = styles [key2]['layergroup']
        wmsclientepsgs = 'EPSG:4326 EPSG:3857 EPSG:25832'
        enableows = 'True'
        f_table_title = styles [key2]['title']
        name = styles [key2]['name']
        groupname = styles [key2]['groupname']

    except:
        print ('-- Fejl: Nøgle {} ikke fundet, bruger standardværdier'.format(key2))

        cur2.execute("SELECT \"type\" FROM {} FROM public.geometry_columns WHERE f_table_schema ilike '{}' AND f_table_name ilike '{}' AND f_geometry_column ilike '{}' AND _key_ ilike 'driftweb.%.geom'".format(key1[0], key1[1], key1[2]))
        gtypes = cur2.fetchall()
        if len(gtypes >0): 
            for g in layers:
                gt = str(g[0])
                gt = gt.upper()
                
                if gt.find ('POINT') != -1: 
                    print ('--       POINT type')
                    color = ''
                    ocolor = '#000000'
                    symbol = 'circle'
                    size = '8'
                    width = '2'
                    layergroup = 'Ukendt'
                    wmsclientepsgs = 'EPSG:4326 EPSG:3857 EPSG:25832'
                    enableows = 'True'
                    f_table_title = '-'
                    name = key2.upper()
                    groupname = 'Unknown point'
                    
                if gt.find ('LINESTRING') != -1: 
                    print ('--       LINESTRING type')
                    color = ''
                    ocolor = '#000000'
                    symbol = 'circle'
                    size = '8'
                    width = '2'
                    layergroup = 'Ukendt'
                    wmsclientepsgs = 'EPSG:4326 EPSG:3857 EPSG:25832'
                    enableows = 'True'
                    f_table_title = '-'
                    name = key2.upper()
                    groupname = 'Unknown line'
                    
                if gt.find ('POLYGON') != -1: 
                    print ('--       POLYGON type')
                    color = ''
                    ocolor = '#000000'
                    symbol = 'circle'
                    size = '8'
                    width = '2'
                    layergroup = 'Ukendt'
                    wmsclientepsgs = 'EPSG:4326 EPSG:3857 EPSG:25832'
                    enableows = 'True'
                    f_table_title = '-'
                    name = key2.upper()
                    groupname = 'Unknown polygon'
                

    
#    print('-- '+groupname+' --')
    if groupname=='Point':    txtclass= CLASS_POINT.format(name=name,color=color ,ocolor=ocolor,symbol=symbol,size=size,width=width)
    if groupname=='Workarea': txtclass= CLASS_POLYGON.format(name=name,color=color ,ocolor=ocolor,symbol=symbol,size=size,width=width)
    if groupname=='Polygon':  txtclass= CLASS_POLYGON.format(name=name,color=color ,ocolor=ocolor,symbol=symbol,size=size,width=width)
    if groupname=='Line':     txtclass= CLASS_LINE.format(name=name,color=color ,ocolor=ocolor,symbol=symbol,size=size,width=width)
    if groupname=='Unknown':  txtclass= CLASS_LINE.format(name=name,color=color ,ocolor=ocolor,symbol=symbol,size=size,width=width)
    
    com = "UPDATE {} SET layergroup = '{}', wmsclientepsgs = '{}', enableows = {}, f_table_title = '{} {}', class= '{}' WHERE _key_ = '{}';"
        
    print (com.format(db_settingstable, layergroup, wmsclientepsgs, enableows, key2, f_table_title, txtclass, str(l[0])))


cur.close()
cur2.close()
conn.commit()
conn.close()
