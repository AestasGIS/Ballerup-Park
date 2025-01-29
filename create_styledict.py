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
def cnv2color(ind):
    if ind and ind != '':
        val = ind.split(' ')
        hex = '#' + "0x%0.2X" % int(val[0]) +"0x%0.2X" % int(val[1]) +"0x%0.2X" % int(val[2]) 
        return hex.replace ('0x','')
    return ''

def cnv2symbol(ind):

    ud = ind

    if ind == "9_10_maal": ud = "circle" # ?
    if ind == "9_12_bom": ud = "circle" # ?
    if ind == "9_14_cykelstativ": ud = "square" # ?
    if ind == "circle": ud = "circle"
    if ind == "cross": ud = "triangle" # ?
    if ind == "diamond": ud = "square" # drejet 45 grader ?
    if ind == "dashed2": ud = "dashed1" # ?
    if ind == "dot_1": ud = "circle" # Indfarvet, størrelse  ?
    if ind == "dot_2": ud = "circle" # Indfarvet, størrelse  ?
    if ind == "dot_3": ud = "circle" # Indfarvet, størrelse  ?
    if ind == "flower": ud = "triangle" # ?
    if ind == "lodret_skravering": ud = "hatch1" # drejet 90 grader ?
    if ind == "park_bordbaenk": ud = "square" # ?
    if ind == "park_flag": ud = "triangle" # ?
    if ind == "park_skilt": ud = "circle" # ?
    if ind == "plus": ud = "circle" # ?
    if ind == "skravering": ud = "hatch1" # ?
    if ind == "skulptur": ud = "triangle" # ?
    if ind == "sonderborg_solitaer_busk": ud = "circle" # ?
    if ind == "square": ud = "square" # ?
    if ind == "star": ud = "triangle" # ?
    if ind == "tent": ud = "triangle" # ?
    if ind == "triangle": ud = "triangle"
    if ind == "trekant": ud = "triangle"    

    return ud
    
def cnv2size(ind):
    return ind
    
def cnv2width(ind):
    return ind
    
def cnv2gap(ind):
    return ind

def cnv2opacity(ind):
    return ind

def cnv2type(ind):
    return ind

def cnv2wrap(ind):
    return ind

def cnv2font(ind):
    ud = ind.lower()
    return ud

def cnv2align(ind):

    ud = ind
    if ind == "center": ud = "cc"
    return ud

def cnv2force(ind):
    return ind

def cnv2maxlength(ind):
    return ind

    

def sweco2mp(val,name,group):

    mp = {}

    if group == 'Polygon' or group == 'Workarea' : mp["sortid"]= 30
    if group == 'Line': mp["sortid"]= 20
    if group == 'Point': mp["sortid"]= 10

    mp["name"] = name
    if 'expression' in val: mp["expression"] = val['expression']

    if type(val["style"]) is list: 
        stl = val["style"][0]                
        if 'color' in stl: mp ["color"] = cnv2color(stl['color'])
        if 'outlinecolor' in stl: mp ["outlinecolor"] = cnv2color(stl['outlinecolor'])
        if 'symbol' in stl:
            if 'symbol' not in mp: mp ["symbol"] = cnv2symbol(stl['symbol'])
            if stl['symbol'] == 'diamond': mp ["angle"] = 45
        if 'size' in stl: mp ["size"] = cnv2size(stl['size'])
        #if 'gap' in stl: mp ["gap"] = cnv2size(stl['gap'])
        if 'width' in stl: mp ["width"] = cnv2width(stl['width'])
        if 'opacity' in stl: mp ["style_opacity"] = cnv2width(stl['opacity'])

        
        stl = val["style"][1]                
        if stl:
            if 'color' in stl and 'color' not in mp: mp ["color"] = cnv2color (stl['color'])
            if 'outlinecolor' in stl and 'outlinecolor' not in mp: mp ["outlinecolor"] = cnv2color (stl['outlinecolor'])
            if 'symbol' in stl:
                if 'symbol' not in mp: mp ["symbol"] = cnv2symbol(stl['symbol'])
                if stl['symbol'] == 'diamond': mp ["angle"] = 45
            if 'size' in stl and 'size' not in mp: mp ["size"] = cnv2size(stl['size'])
            #if 'gap' in stl and 'gap' not in mp: mp ["gap"] = cnv2gap(stl['gap'])
            if 'width' in stl and 'width' not in mp: mp ["width"] = cnv2width(stl['width'])
            if 'opacity' in stl and 'opacity' not in mp: mp ["opacity"] = cnv2opacity(stl['opacity'])
   
    else:  
        stl = val["style"]                
        if 'color'        in stl: mp ["color"] =        cnv2color (stl['color'])
        if 'outlinecolor' in stl: mp ["outlinecolor"] = cnv2color (stl['outlinecolor'])
        if 'symbol'       in stl: mp ["symbol"] =       cnv2symbol(stl['symbol'])
        if 'size'         in stl: mp ["size"] =         cnv2size  (stl['size'])
        if 'gap'          in stl: mp ["gap"] =          cnv2gap   (stl['gap'])
        if 'width'        in stl: mp ["width"] =        cnv2width (stl['width'])
        if 'opacity'      in stl: mp ["opacity"] =      cnv2opacity(stl['opacity'])
    
    lbl = val['label']
    if 'color'        in lbl: mp ["label_color"] =        cnv2color (lbl['color'])
    if 'outlinecolor' in lbl: mp ["label_outlinecolor"] = cnv2color (lbl['outlinecolor'])
    if 'size'         in lbl: mp ["label_size"] =         cnv2size  (lbl['size'])
    #if 'type'         in lbl: mp ["type"] =         cnv2type  (lbl['type'])
    if 'font'         in lbl: mp ["label_font"] =         cnv2font  (lbl['font'])
    #if 'wrap'         in lbl: mp ["wrap"] =         cnv2wrap(lbl['wrap'])
    #if "FORCE"        in lbl: mp ["FORCE"] =        cnv2force (lbl["FORCE"])
    #if "MAXLENGTH"    in lbl: mp ["MAXLENGTH"] =    cnv2maxlength(lbl["MAXLENGTH"])
    if 'ALIGN'        in lbl: mp ['label_position'] =        cnv2align (lbl["ALIGN"])
    
    return mp


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
                        
            # Find and convert values from SWECO class
            values = {}
            d['mapcentia'] = sweco2mp(d['sweco'],d['name'], d['groupname'])
    
            # Save style under key value in styles dict.  
            styles[d['key'].upper()] = d

#Open save file.
out_file = open("styles.json", "w", encoding="utf-8")

# Save styles dict as json in file
json.dump(styles, out_file, indent = 4)
out_file.close()




#        if d['groupname'] == 'Point':
#
#            d['name']=dd.geoclass.name.cdata
#            d['color']=''
#            d['ocolor']=''
#            for dgs in dd.geoclass.style:
#                try:
#                    if d['color'] == '': d['color']=cnv2hex(dgs.color.cdata)
#                except:
#                    pass
#                try:
#                    if d['ocolor'] == '': d['ocolor']=cnv2hex(dgs.outlinecolor.cdata)
#                except:
#                    pass
#            d['symbol']='circle'
#            d['size']='8'
#            d['width']='2'
#            d['layergroup']='Punkter'
#
#        if d['groupname'] == 'Line':
#            d['name']=dd.geoclass.name.cdata
#            d['color']=''
#            d['ocolor']=''
#            for dgs in dd.geoclass.style:
#                try:
#                    if d['color'] == '': d['color']=cnv2hex(dgs.color.cdata)
#                except:
#                    pass
#                try:
#                    if d['ocolor'] == '': d['ocolor']=cnv2hex(dgs.outlinecolor.cdata)
#                except:
#                    pass
#            d['symbol']='circle'
#            d['size']='8'
#            d['width']='2'
#            d['layergroup']='Linier'
#
#        if d['groupname'] == 'Polygon':
#            d['name']=dd.geoclass.name.cdata
#            d['color']=''
#            d['ocolor']=''
#            for dgs in dd.geoclass.style:
#                try:
#                    if d['color'] == '': d['color']=cnv2hex(dgs.color.cdata)
#                except:
#                    pass
#                try:
#                    if d['ocolor'] == '': d['ocolor']=cnv2hex(dgs.outlinecolor.cdata)
#                except:
#                    pass
#            d['symbol']='circle'
#            d['size']='8'
#            d['width']='2'
#            d['layergroup']='Flader'
#
#        if d['groupname'] == 'Workarea':
#            d['name']=dd.geoclass.name.cdata
#            d['color']=''
#            d['ocolor']=''
#            for dgs in dd.geoclass.style:
#                try:
#                    if d['color'] == '': d['color']=cnv2hex(dgs.color.cdata)
#                except:
#                    pass
#                try:
#                    if d['ocolor'] == '': d['ocolor']=cnv2hex(dgs.outlinecolor.cdata)
#                except:
#                    pass
#            d['symbol']='circle'
#            d['size']='8'
#            d['width']='2'
#            d['layergroup']='Arbejdsomraader'
#        
#        key = str(r[0])
#        key = key.upper()



#    "sortid": 10,
#    "name": "AEST",
#    "expression": "",
#    "label": false,
#    "label_size": "",
#    "label_color": "",
#    "color": "#C1A129",
#    "outlinecolor": "#C1A129",
#    "symbol": "circle",
#    "angle": "",
#    "size": "8",
#    "width": "2",
#    "overlaycolor": "",
#    "overlayoutlinecolor": "",
#    "overlaysymbol": "",
#    "overlaysize": "",
#    "overlaywidth": "",
#    "label_text": "",
#    "label_position": "",
#    "label_font": "",
#    "label_fontweight": "",
#    "label_angle": "",
#    "label_backgroundcolor": "",
#    "style_opacity": "",
#    "overlaystyle_opacity": "",
#    "label_force": false,
#    "id": 0,
#    "class_minscaledenom": "",
#    "class_maxscaledenom": "",
#    "leader": false,
#    "leader_gridstep": "",
#    "leader_maxdistance": "",
#    "leader_color": "",
#    "pattern": "",
#    "linecap": "",
#    "geomtransform": "",
#    "minsize": "",
#    "maxsize": "",
#    "style_offsetx": "",
#    "style_offsety": "",
#    "style_polaroffsetr": "",
#    "style_polaroffsetd": "",
#    "overlaypattern": "",
#    "overlaylinecap": "",
#    "overlayangle": "",
#    "overlaygeomtransform": "",
#    "overlayminsize": "",
#    "overlaymaxsize": "",
#    "overlaystyle_offsetx": "",
#    "overlaystyle_offsety": "",
#    "overlaystyle_polaroffsetr": "",
#    "overlaystyle_polaroffsetd": "",
#    "label_minscaledenom": "",
#    "label_maxscaledenom": "",
#    "label_outlinecolor": "",
#    "label_buffer": "",
#    "label_repeatdistance": "",
#    "label_backgroundpadding": "",
#    "label_offsetx": "",
#    "label_offsety": "",
#    "label_expression": "",
#    "label_maxsize": "",
#    "label_minfeaturesize": "",
#    "label2": false,
#    "label2_text": "",
#    "label2_force": false,
#    "label2_minscaledenom": "",
#    "label2_maxscaledenom": "",
#    "label2_position": "",
#    "label2_size": "",
#    "label2_font": "",
#    "label2_fontweight": "",
#    "label2_color": "",
#    "label2_outlinecolor": "",
#    "label2_buffer": "",
#    "label2_repeatdistance": "",
#    "label2_angle": "",
#    "label2_backgroundcolor": "",
#    "label2_backgroundpadding": "",
#    "label2_offsetx": "",
#    "label2_offsety": "",
#    "label2_expression": "",
#    "label2_maxsize": "",
#    "label2_minfeaturesize": ""
#    

#template_dict = {
#    'Point'   :'[{Point{"sortid":10,"name":"{name}","expression":"","label":false,"label_size":"","label_color":"","color":"{color}","outlinecolor":"{ocolor}","symbol":"{symbol}","angle":"","size":"{size}","width":"{width}","overlaycolor":"","overlayoutlinecolor":"","overlaysymbol":"","overlaysize":"","overlaywidth":"","label_text":"","label_position":"","label_font":"","label_fontweight":"","label_angle":"","label_backgroundcolor":"","style_opacity":"","overlaystyle_opacity":"","label_force":""}}]',
#    'Line'    :'[{{"sorLinetid":10,"name":"{name}","expression":"","label":false,"label_size":"","label_color":"","color":"{color}","outlinecolor":"{ocolor}","symbol":"{symbol}","angle":"","size":"{size}","width":"{width}","overlaycolor":"","overlayoutlinecolor":"","overlaysymbol":"","overlaysize":"","overlaywidth":"","label_text":"","label_position":"","label_font":"","label_fontweight":"","label_angle":"","label_backgroundcolor":"","style_opacity":"","overlaystyle_opacity":"","label_force":""}}]',
#    'Polygon' :'[{{"sortid"Polygon:10,"name":"{name}","expression":"","label":false,"label_size":"","label_color":"","color":"{color}","outlinecolor":"{ocolor}","symbol":"{symbol}","angle":"","size":"{size}","width":"{width}","overlaycolor":"","overlayoutlinecolor":"","overlaysymbol":"","overlaysize":"","overlaywidth":"","label_text":"","label_position":"","label_font":"","label_fontweight":"","label_angle":"","label_backgroundcolor":"","style_opacity":"","overlaystyle_opacity":"","label_force":false,"id":0,"class_minscaledenom":"","class_maxscaledenom":"","leader":false,"leader_gridstep":"","leader_maxdistance":"","leader_color":"","pattern":"","linecap":"","geomtransform":"","minsize":"","maxsize":"","style_offsetx":"","style_offsety":"","style_polaroffsetr":"","style_polaroffsetd":"","overlaypattern":"","overlaylinecap":"","overlayangle":"","overlaygeomtransform":"","overlayminsize":"","overlaymaxsize":"","overlaystyle_offsetx":"","overlaystyle_offsety":"","overlaystyle_polaroffsetr":"","overlaystyle_polaroffsetd":"","label_minscaledenom":"","label_maxscaledenom":"","label_outlinecolor":"","label_buffer":"","label_repeatdistance":"","label_backgroundpadding":"","label_offsetx":"","label_offsety":"","label_expression":"","label_maxsize":"","label_minfeaturesize":"","label2":false,"label2_text":"","label2_force":false,"label2_minscaledenom":"","label2_maxscaledenom":"","label2_position":"","label2_size":"","label2_font":"","label2_fontweight":"","label2_color":"","label2_outlinecolor":"","label2_buffer":"","label2_repeatdistance":"","label2_angle":"","label2_backgroundcolor":"","label2_backgroundpadding":"","label2_offsetx":"","label2_offsety":"","label2_expression":"","label2_maxsize":"","label2_minfeaturesize":""}}]',  
#    'Workarea':'[{{"sortid"Polygon:10,"name":"{name}","expression":"","label":false,"label_size":"","label_color":"","color":"{color}","outlinecolor":"{ocolor}","symbol":"{symbol}","angle":"","size":"{size}","width":"{width}","overlaycolor":"","overlayoutlinecolor":"","overlaysymbol":"","overlaysize":"","overlaywidth":"","label_text":"","label_position":"","label_font":"","label_fontweight":"","label_angle":"","label_backgroundcolor":"","style_opacity":"","overlaystyle_opacity":"","label_force":false,"id":0,"class_minscaledenom":"","class_maxscaledenom":"","leader":false,"leader_gridstep":"","leader_maxdistance":"","leader_color":"","pattern":"","linecap":"","geomtransform":"","minsize":"","maxsize":"","style_offsetx":"","style_offsety":"","style_polaroffsetr":"","style_polaroffsetd":"","overlaypattern":"","overlaylinecap":"","overlayangle":"","overlaygeomtransform":"","overlayminsize":"","overlaymaxsize":"","overlaystyle_offsetx":"","overlaystyle_offsety":"","overlaystyle_polaroffsetr":"","overlaystyle_polaroffsetd":"","label_minscaledenom":"","label_maxscaledenom":"","label_outlinecolor":"","label_buffer":"","label_repeatdistance":"","label_backgroundpadding":"","label_offsetx":"","label_offsety":"","label_expression":"","label_maxsize":"","label_minfeaturesize":"","label2":false,"label2_text":"","label2_force":false,"label2_minscaledenom":"","label2_maxscaledenom":"","label2_position":"","label2_size":"","label2_font":"","label2_fontweight":"","label2_color":"","label2_outlinecolor":"","label2_buffer":"","label2_repeatdistance":"","label2_angle":"","label2_backgroundcolor":"","label2_backgroundpadding":"","label2_offsetx":"","label2_offsety":"","label2_expression":"","label2_maxsize":"","label2_minfeaturesize":""}}]'  
#}

