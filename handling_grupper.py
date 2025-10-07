sqlTmplF = """
                SELECT 
                    '{eid}' AS element_id, 
                    g.arbejdsgruppe_id AS arbejdsgruppe_id, 
                    1 AS niveau, 
                    true AS autoinkluderet, 
                    g.arbejdsgruppe_navn AS arbejdsgruppe_navn, 
                    g.atype_key AS atype_key, 
                    a.atype_navn AS atype_navn, 
                    gen_random_uuid () AS id, 
                    '{etyp}' AS etype_key
                FROM lookup.arbejdsgruppe_typer_element_typer a 
                JOIN arbejde.arbejdsgrupper g ON a.atype_key = g.atype_key	
                WHERE a.etype_key = '{etyp}' AND 
                    NOT g.passiv AND 
                    st_intersects (ST_GeomFromText('{wkt}', {srid}),g.geom) AND
                    st_area(st_intersection (ST_GeomFromText('{wkt}', {srid}),g.geom))/st_area(ST_GeomFromText('{wkt}', {srid})) >= 0.6
                ORDER BY 7,5

"""
sqlTmplL = """
                SELECT 
                    '{eid}' AS element_id, 
                    g.arbejdsgruppe_id AS arbejdsgruppe_id, 
                    1 AS niveau, 
                    true AS autoinkluderet, 
                    g.arbejdsgruppe_navn AS arbejdsgruppe_navn, 
                    g.atype_key AS atype_key, 
                    a.atype_navn AS atype_navn, 
                    gen_random_uuid () AS id, 
                    '{etyp}' AS etype_key
                FROM lookup.arbejdsgruppe_typer_element_typer a 
                JOIN arbejde.arbejdsgrupper g ON a.atype_key = g.atype_key	
                WHERE a.etype_key = '{etyp}' AND 
                    NOT g.passiv AND 
                    st_intersects (ST_GeomFromText('{wkt}', {srid}),g.geom) AND
                    st_length(st_intersection (ST_GeomFromText('{wkt}', {srid}),g.geom))/st_length(ST_GeomFromText('{wkt}', {srid})) >= 0.6
                ORDER BY 7,5
"""
sqlTmplP = """
                SELECT 
                    '{eid}' AS element_id, 
                    g.arbejdsgruppe_id AS arbejdsgruppe_id, 
                    1 AS niveau, 
                    true AS autoinkluderet, 
                    g.arbejdsgruppe_navn AS arbejdsgruppe_navn, 
                    g.atype_key AS atype_key, 
                    a.atype_navn AS atype_navn, 
                    gen_random_uuid () AS id, 
                    '{etyp}' AS etype_key
                FROM lookup.arbejdsgruppe_typer_element_typer a 
                JOIN arbejde.arbejdsgrupper g ON a.atype_key = g.atype_key	
                WHERE a.etype_key = '{etyp}' AND 
                    NOT g.passiv AND 
                    st_intersects (ST_GeomFromText('{wkt}', {srid}),g.geom)
                ORDER BY 7,5
"""


from qgis.PyQt.QtWidgets import * 
from qgis.core import QgsDataSourceUri

wEtype_navn = form.findChildren(QComboBox,"etype_navn")[0]
if wEtype_navn.currentIndex() < 0:
    button = QMessageBox.critical(
        form,
        "Fejl ved navngivning",
        "Elementtype skal være sat !",
        buttons=QMessageBox.Discard,
        defaultButton=QMessageBox.Discard
    )

else:

    wNavn       = form.findChildren(QLineEdit,"navn")[0]
    wEtype_key  = form.findChildren(QLineEdit,"etype_key")[0].text()
    wId         = form.findChildren(QLineEdit,"id")[0].text()
    wWkt = '[%geom_to_wkt(@geometry)%]'
    wSrid = '[%@layer_crs%]'.replace ('EPSG:','')
    
    gt = '[%geometry_type(@geometry)%]'
    if gt == 'Polygon':
        wEtype = 'F'
        sqlTmp =sqlTmplF
    elif gt == 'Line':
        wEtype = 'L'
        sqlTmp =sqlTmplL
    else:
        wEtype = 'P'
        sqlTmp =sqlTmplP
    
    layer = QgsProject.instance().mapLayer('[%@layer_id%]')
    layerProvider = layer.dataProvider()
    layerUri = QgsDataSourceUri(layerProvider.dataSourceUri())
    layerProviderName = layerProvider.name()

    md = QgsProviderRegistry.instance().providerMetadata(layerProvider.name())
    conn = md.createConnection(layerProvider.dataSourceUri(), {})

    sqlTxt = sqlTmp.format (eid=wId, etyp=wEtype_key, wkt=wWkt, srid=wSrid) 
    results = conn.executeSql(sqlTxt)

    print('Arbejdsgruppe-id                     Arbejdsgruppe-navn                            AGT-key    Arbejdsgruppetype-navn                        ET-key')
    print('=====================================================================================================================================================')
    for r in results:
        print('{: <32} {: <45} {: <10} {: <45} {: <10}'.format(r[1],r[4],r[5],r[6],r[8]))

