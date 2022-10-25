@echo off
TITLE Ejercicio No. 6
MODE con:cols=80 lines=40
chcp 65001
:inicio
SET var=0
cls
echo ------------------------------------------------------------------------------
echo                             Actividad No. 6
echo ------------------------------------------------------------------------------
echo  %DATE% ^| %TIME%
echo ------------------------------------------------------------------------------
echo Se creará el siguiente arbol de directorios:
echo. 
echo Batch - Ciclos
echo    ---CARPETAS
echo    ---CARPETAS PARES
echo    ---CARPETAS IMPARES
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
goto:salir

:op1
    echo.
         md "Batch - ciclos"
         cd "Batch - ciclos"
         md "CARPETAS" "CARPETAS PARES" "CARPETAS IMPARES" 
         cd "CARPETAS"
         for /L %%i in (1,1,40) do (
             md "Carpeta %%i" 
         )
         cd ..
         cd "CARPETAS PARES"
         for /L %%j in (2,2,60) do (
             md "Carpeta %%j"
         )
         cd ..
         cd "CARPETAS IMPARES"
         for /L %%k in (1,2,39) do (
             md "Carpeta %%k"
         )
         echo Se ha creado el directorio y subcarpetas
    echo.
    pause
    goto:salir

:salir
    @cls&exit 