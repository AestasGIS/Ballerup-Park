@echo off

rem Tilpas nedenstående linje mht placering af QGIS på PC
rem Part "QGIS 3.40.1" rettes til relevant mappe
call "C:\Program Files\QGIS 3.22.16\bin\o4w_env.bat"
rem call "C:\Program Files\QGIS 3.40.1\bin\o4w_env.bat"

chcp 65001
@echo on
rem Start script med python fortolker i QGIS installation
python3 load_styles.py
pause