@echo off
TITLE Ejercicio No. 3
MODE con:cols=80 lines=40
chcp 65001
:inicio
SET var=0
cls

echo ------------------------------------------------------------------------------
echo                             Actividad No. 3
echo ------------------------------------------------------------------------------
echo  %DATE% ^| %TIME%
echo ------------------------------------------------------------------------------
echo Se creará el siguiente arbol de directorios:
echo. 
echo Sistemas Operativos 2022 
echo ---Rudy Cutz
echo    ---Software de Sistema
echo       --Sistemas Operativos
echo       --Drivers
echo    ---Software utilitario
echo       --Booteables
echo       --Recuperar informaicón
echo    ---Software aplicación
echo       --Procesadores de texto
echo       --Hojas de cálculo
echo       --Presentaciones
echo    ---Software de programación
echo       --Python
echo       --PHP
echo       --Java
echo       --C#
echo ------------------------------------------------------------------------------
echo  1    Crear arbol de directorios.
echo  2    Salir
echo ------------------------------------------------------------------------------
echo.

SET /p var= ^> Seleccione una opcion [1-2]:

if "%var%"=="0" goto inicio
if "%var%"=="1" goto op1
if "%var%"=="2" goto salir

echo. El numero "%var%" no es una opcion valida, por favor intente de nuevo.
echo.
pause
echo.
goto:inicio

:op1
    echo.
         md "Sistemas Operativos 2022"
         cd "Sistemas Operativos 2022"
         md "Rudy Cutz" 
         cd "Rudy Cutz"
         md "Software de sistema" "Software utilitario" "Software aplicacion" "Software de programacion"
         cd "Software de sistema"
         md "Sistemas Operativos" "Drivers"
         cd ..
         cd "Software utilitario"
         md "Booteables" "Recuperar información"
         cd ..
         cd "Software aplicacion"
         md "Procesadores de texto" "Hojas de Calculo" "Presentaciones"
         cd ..
         cd "Software de programacion"
         md "Python" "PHP" "Java" "C#"
         echo Se ha creado el directorio
    echo.
    pause
    goto:salir

:salir
    @cls&exit 