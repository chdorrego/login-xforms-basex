@echo off
setLocal EnableDelayedExpansion

REM Path to this script
set PWD=%~dp0

REM Core and library classes
set CP=%PWD%/../BaseX.jar
set LIB=%PWD%/../lib
for /R "%LIB%" %%a in (*.jar) do set CP=!CP!;%%a

REM Options for virtual machine
set BASEX_JVM=-Xmx512m %BASEX_JVM%

REM Run code
start javaw -cp "%CP%" %BASEX_JVM% org.basex.BaseXGUI %*
