"C:\Program Files\PostgreSQL\17\bin\raster2pgsql.exe" -R -s 25832 -t 512x512 -Y 1000 -I D:\projekter\qgis_raster\merged_scenario_RP100_2124.tif fdc_raster.et_eller_andet2 | "C:\Program Files\PostgreSQL\17\bin\psql.exe" -h localhost -p 5434 -U postgres -d flood_damage_hvidovre
pause

REM -- CREATE INDEX ON fdc_raster.merged_scenario_rp100_2124 USING GIST (ST_ConvexHull(rast));