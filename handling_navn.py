sqlTmpl = "SELECT COALESCE(MAX(navn),'!NoValue!') FROM \"{sch}\".\"{tbl}\" WHERE etype_key = '{etk}' AND navn ~ '^{etk}-\\d{{5}}'"

from qgis.PyQt.QtWidgets import * 
from qgis.core import QgsDataSourceUri

wNavn       = form.findChildren(QLineEdit,"navn")[0]
wEtype_key  = form.findChildren(QLineEdit,"etype_key")[0]
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
    layer = QgsProject.instance().mapLayer('[%@layer_id%]')
    layerProvider = layer.dataProvider()
    layerUri = QgsDataSourceUri(layerProvider.dataSourceUri())
    layerProviderName = layerProvider.name()

    md = QgsProviderRegistry.instance().providerMetadata(layerProvider.name())
    conn = md.createConnection(layerProvider.dataSourceUri(), {})
    print (sqlTmpl)
    sqlTxt = sqlTmpl.format (sch=layerUri.schema(), tbl=layerUri.table(), etk=wEtype_key.text()) 
    print (sqlTxt)
    results = conn.executeSql(sqlTxt)
    tbname = str(results[0][0])
    print ('>>'+tbname+'<<')
    if tbname == '!NoValue!':
        newnumber = 1
    else:
        tbnumber = tbname.replace(wEtype_key.text()+'-','')
        print ('>>'+tbnumber+'<<')
        newnumber = int(tbnumber)+1
        print (newnumber)

    wNavn.setText('{}-{:05d}'.format(wEtype_key.text(),newnumber))


