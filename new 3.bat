@echo off
@echo.
:inicio
TITLE "Bienvenid@ %USERNAME% cabron"
@echo.
@echo.
@echo. "NO ME JODAS ES UN TREST"
@echo.
@echo.
echo  1    ENCENDER EL LED
echo  2    APAGAR EL LED
@echo.
SET /p var= ^> Seleccione una opcion [1-2]: 
if "%var%"=="1" goto uno
if "%var%"=="2" goto dos
:uno
start /I gcloud iot devices configs update --config-data="{"led": 1}" --device=esp32_110AC8 --region=europe-west1 --registry=iot-registry 
goto fin
:dos
start /I gcloud iot devices configs update --config-data="{"led": 0}" --device=esp32_110AC8 --region=europe-west1 --registry=iot-registry 


:fin
cls
goto inicio


