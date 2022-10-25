@echo off
TITLE Ejercicio No. 5
MODE con:cols=80 lines=40
chcp 65001
:inicio
cls
echo ------------------------------------------------------------------------------
echo                             Actividad No. 5
echo ------------------------------------------------------------------------------
echo  %DATE% ^| %TIME%
echo ------------------------------------------------------------------------------
SET /p nombre= ^> Ingrese su nombre: 
echo.
SET /p apellido= ^> Ingrese su apellido: 
echo.
SET /p edad= ^> Ingrese su edad: 
echo.

if %edad% GEQ 18 goto op1 

if %edad% LSS 18 goto op2

:op1
    echo.
        echo. Usted es mayor de edad
        md "%nombre% %apellido%"
        echo. Se ha creado una carpeta con sus datos.
        echo.
    pause
    goto:salir
:op2
    echo.
        echo. Es menor de edad
        echo. No se puede crear la carpeta por ser menor de edad 
        echo.
    pause
    goto:salir


