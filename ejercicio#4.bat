@echo off
TITLE Ejercicio No. 4
MODE con:cols=80 lines=40
chcp 65001
:inicio
SET var=0
cls
echo ------------------------------------------------------------------------------
echo                             Actividad No. 4
echo ------------------------------------------------------------------------------
echo  %DATE% ^| %TIME%
echo ------------------------------------------------------------------------------
echo  1    Ocultar archivos y carpetas
echo  2    Mostrar archivos y carpetas 
echo  3    Salir
echo ------------------------------------------------------------------------------
echo.* Se ocultarán/mostrarán los archivos dentro de la carpeta: 
echo. 'Sistemas Operativos 2022' Creados en la actividad #3
echo.
SET /p var= ^> Seleccione una opcion [1-3]:

if "%var%"=="0" goto inicio
if "%var%"=="1" goto op1
if "%var%"=="2" goto op2
if "%var%"=="3" goto salir

echo. El numero "%var%" no es una opcion valida, por favor intente de nuevo.
echo.
pause
echo.
goto:inicio

:op1
    echo.
        attrib +s +h "Sistemas Operativos 2022"    
    echo.
    echo. Carpeta 'Sistemas Operativos 2022' oculta
    echo.
    pause
    goto:inicio

:op2
    echo.
        attrib -s -h "Sistemas Operativos 2022" 
    echo.
    echo. Carpeta 'Sistemas Operativos 2022' mostrada de nuevo
    echo.
    pause
    goto:inicio

:salir
    @cls&exit 