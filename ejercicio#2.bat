@echo off
TITLE Ejercicio No. 2
MODE con:cols=80 lines=40
chcp 65001
:inicio
SET var=0
cls
echo ------------------------------------------------------------------------------
echo                             Actividad No. 2
echo ------------------------------------------------------------------------------
echo  %DATE% ^| %TIME%
echo ------------------------------------------------------------------------------
echo  1    Abrir Calculador  
echo  2    Abrir Youtube
echo  3    Abrir Word
echo  4    Abrir Excel
echo  5    Power Point
echo  6    Abrir página de -EFPEM-
echo  7    Youtube
echo  8    Salir
echo ------------------------------------------------------------------------------
echo.

SET /p var= ^> Seleccione una opcion [1-8]:

if "%var%"=="0" goto inicio
if "%var%"=="1" goto op1
if "%var%"=="2" goto op2
if "%var%"=="3" goto op3
if "%var%"=="4" goto op4
if "%var%"=="5" goto op5
if "%var%"=="6" goto op6
if "%var%"=="7" goto op7
if "%var%"=="8" goto salir

echo. El numero "%var%" no es una opcion valida, por favor intente de nuevo.
echo.
pause
echo.
goto:inicio

:op1
    echo.
    echo. Abriendo Calculadora...
    echo.
    start calc   
    echo.
    pause
    goto:inicio

:op2
    echo.
    echo. Abriendo Youtube...
    echo.
    start https://www.youtube.com/    
    echo.
    pause
    goto:inicio

:op3
    echo.
    echo. Abriendo Word...
    echo.
    start winword
    echo.
    pause
    goto:inicio
  
:op4
    echo.
    echo. Abriendo Excel...
    echo.
    start Excel
    echo.
    pause
    goto:inicio

:op5
    echo.
    echo. Abriendo Porwer Point...
    echo.
    start POWERPNT
    echo.
    pause
    goto:inicio

:op6
    echo.
    echo. Abriendo Página de la EFPEM...
    echo.
    start https://www.efpemusac.org/
    echo.
    pause
    goto:inicio

:op7
    echo.
    echo. Abriendo Youtube...
    echo.
    start https://www.youtube.com/    
    echo.
    pause
    goto:inicio
:salir
    @cls&exit 