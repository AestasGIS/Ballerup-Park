@echo off
rem call "C:\Program Files\QGIS 3.40.1\bin\o4w_env.bat"
call "C:\Program Files\QGIS 3.22.16\bin\o4w_env.bat"
chcp 65001

@echo on

python3 create_styledict.py

pause