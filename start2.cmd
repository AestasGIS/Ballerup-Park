ECHO ON

"SET PGCLIENTENCODING=WIN-1252"
"SET MS_SERVER=server=nst-gis-sql01p.prod.sitad.dk;database=drc-spor;trusted_connection=yes;"
"SET PG_SERVER=host=localhost port=5432 user=postgres password=ukulemy dbname=nst_spor_final"

"SET MS_TABLE=ms_schema.ms_table"
"SET PG_TABLE=pg_schema.pg_table"
GOSUB ogr

REM andre tabeller
REM "SET MS_TABLE=ms_schema2.ms_table2"
REM "SET PG_TABLE=pg_schema2.pg_table2"
REM GOSUB ogr

EXIT

:ogr
ogr2ogr.exe --config MSSQLSPATIAL_USE_BCP false -append -update -a_srs EPSG:25832 -nlt PROMOTE_TO_MULTI -nln %MS_TABLE% -dialect SQLITE -sql "SELECT *, CURRENT_TIMESTAMP AS hentet_datotid FROM %PG_TABLE%" -f "MSSQLSpatial" MSSQL:"%MS_SERVER%" PG:"%PG_SERVER%"                  
RETURN
