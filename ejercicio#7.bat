@echo off
TITLE Ejercicio No. 7
MODE con:cols=80 lines=40
chcp 65001
SET var=0
cls
echo ------------------------------------------------------------------------------
echo                             Actividad No. 7
echo ------------------------------------------------------------------------------
echo  %DATE% ^| %TIME%
echo ------------------------------------------------------------------------------
echo.
set /p maximo=^>Introduce el número de carpetas a crear: 
set /a contador=0
echo.
:bucle
set /a contador=contador+1
set /p nombre=^>Introduce Nombre de la carpeta %contador%:
md "%nombre%"
 
if %contador% lss %maximo% (goto bucle
) else (
echo.
echo Se han creado las %maximo% carpetas!
echo.
echo pulse una tecla para salir...
pause > nul)