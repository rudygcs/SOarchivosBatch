@echo off
TITLE Ejercicio No. 1
MODE con:cols=80 lines=40
chcp 65001
:inicio
SET var=0
cls
echo ------------------------------------------------------------------------------
echo                             Actividad No. 1
echo ------------------------------------------------------------------------------
echo  %DATE% ^| %TIME%
echo ------------------------------------------------------------------------------
echo  1    ¿Qué es el CMD?  
echo  2    ¿Qué es un comando MS-DOS?  
echo  3    ¿Qué es PowerShell?
echo  4    ¿Qué es un archivo Batch?  
echo  5    Salir
echo ------------------------------------------------------------------------------
echo.

SET /p var= ^> Seleccione una opcion [1-5]:

if "%var%"=="0" goto inicio
if "%var%"=="1" goto op1
if "%var%"=="2" goto op2
if "%var%"=="3" goto op3
if "%var%"=="4" goto op4
if "%var%"=="5" goto salir

::Mensaje de error, validación cuando se selecciona una opción fuera de rango
echo. El numero "%var%" no es una opcion valida, por favor intente de nuevo.
echo.
pause
echo.
goto:inicio

:op1
    echo.
    echo. --Tema 1: ¿Qué es el CMD?--
    echo.
        echo. El Símbolo del Sistema también es conocido como Command Prompt o CMD, 
	echo. es una aplicación que se encuentra en los sistemas operativos Windows.
	echo. 
	echo. En términos técnicos, el símbolo del sistema es un intérprete de línea de 
	echo. comandos, y su propósito es permitirle introducir comandos utilizando 
	echo. una sintaxis especial.
	echo. 
	echo. Los comandos que se envían al símbolo del sistema, se introducen como líneas
	echo. de texto, que son ejecutadas por el sistema operativo en cuanto se pulsa
	echo. "Intro" en el teclado.
    echo.
    pause
    goto:inicio

:op2
    echo.
    echo. --Tema 2: ¿Qué es un comando MS-DOS?--
    echo.
        echo. son las siglas de MicroSoft Disk Operating System (Sistema Operativo de Disco de MicroSoft) 
	echo. y es el nombre de uno de los sistemas operativos para sistemas informáticos 
	echo. basados en una arquitectura x86 y diseñados por la empresa norteamericana de software Microsoft. 
	echo. Se le conocía popularmente como DOS. 
    echo.
    pause
    goto:inicio

:op3
    echo.
    echo. --Tema 3: ¿Qué es PowerShell?--
    echo.
        echo. PowerShell, llamado Windows PowerShell originariamente, es una interfaz de 
	echo. línea de comandos o CLI (Command-Line Interface) que tiene la posibilidad 
	echo. de ejecutar Scripts (unión de comandos) y que facilita la configuración, 
	echo. administración y automatización de tareas multiplataforma, ademas dispone 
	echo. de un lenguaje de scripting. 
	echo. 
	echo. Powershell tiene una salida basada en objetos por lo que acepta y devuelve 
	echo. objetos de .NET ya que está basado en .NET CLR (Commond Language Runtime) 
	echo. esto es ideal para automatización de procesos.
    echo.
    pause
    goto:inicio
  
:op4
    echo.
    echo. --Tema 4: ¿Qué es un archivo Batch?--
    echo.
        echo. Los archivos batch son aplicaciones para Windows, que pueden ser creadas por 
	echo. los propios usuarios, para infinidad de tareas.
	echo. 
	echo. Son simples archivos de texto con la extensión de archivo .CMD o .BAT, que al 
	echo. ejecutarlas (dar dos clics en ellas), sus instrucciones son ejecutadas en la 
	echo. Consola de CMD o Símbolo del sistema.
    echo.
    pause
    goto:inicio

:salir
    @cls&exit 