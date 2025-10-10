sqlTmpl = "SELECT jsonb_pretty(\"max\") AS max FROM lookup.ekstra_template WHERE etype_key = '{etk}'"; 

from qgis.PyQt.QtWidgets import * 
from qgis.core import QgsDataSourceUri

wEkstra     = form.findChildren(QPlainTextEdit,"ekstra")[0]
wEtype_key  = form.findChildren(QLineEdit,"etype_key")[0]
wEtype_navn = form.findChildren(QComboBox,"etype_navn")[0]

if wEtype_navn.currentIndex()<0:
    button = QMessageBox.critical(
        form,
        "Fejl ved navngivning",
        "Elementtype skal være sat !",
        buttons=QMessageBox.Discard,
        defaultButton=QMessageBox.Discard
    )
else:
    layer = QgsProject.instance().mapLayer('[%@layer_id%]')
    layerProvider = layer.dataProvider()
    layerUri = QgsDataSourceUri(layerProvider.dataSourceUri())
    layerProviderName = layerProvider.name()

    md = QgsProviderRegistry.instance().providerMetadata(layerProvider.name())
    conn = md.createConnection(layerProvider.dataSourceUri(), {})
    sqlTxt = sqlTmpl.format (etk=wEtype_key.text()) 
    results = conn.executeSql(sqlTxt)
    if len(results) == 0:
        button = QMessageBox.critical(
            form,
            "Fejl ved hentning af ekstra-felt",
            "JSON værdi for elementtype: '{etk}' ikke fundet i opslagstabel !\nIndsætter tom JSON struktur".format (etk=wEtype_key.text()),
            buttons=QMessageBox.Discard,
            defaultButton=QMessageBox.Discard
        )
        wEkstra.clear()
        wEkstra.insertPlainText('{}')
    else:
        wEkstra.clear()
        wEkstra.insertPlainText(results[0][0])
