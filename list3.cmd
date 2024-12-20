chcp 65001

set pgacc=-f "PostgreSQL" PG:"host=localhost user=postgres dbname=b4 password=ukulemy active_schema=sweco2 port=5433"  

ogr2ogr %pgacc% WFS:"https://wfs-ext.gmpark.dk/geoserver/ws_22e14f95-7397-4d9a-b347-b0f4e56dd45c/ows" "ws_22e14f95-7397-4d9a-b347-b0f4e56dd45c:workareas" -nln "workareas"
ogr2ogr %pgacc% WFS:"https://wfs-ext.gmpark.dk/geoserver/ws_22e14f95-7397-4d9a-b347-b0f4e56dd45c/ows" "ws_22e14f95-7397-4d9a-b347-b0f4e56dd45c:vvk1.2" -nln "vvk1_2"
ogr2ogr %pgacc% WFS:"https://wfs-ext.gmpark.dk/geoserver/ws_22e14f95-7397-4d9a-b347-b0f4e56dd45c/ows" "ws_22e14f95-7397-4d9a-b347-b0f4e56dd45c:vvk1.2m" -nln "vvk1_2m"
ogr2ogr %pgacc% WFS:"https://wfs-ext.gmpark.dk/geoserver/ws_22e14f95-7397-4d9a-b347-b0f4e56dd45c/ows" "ws_22e14f95-7397-4d9a-b347-b0f4e56dd45c:vvk1.4" -nln "vvk1_4"
