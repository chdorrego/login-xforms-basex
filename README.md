Login Xforms-Basex 
==================
Este proyecto contine 
* ```/static/auth/login.xml``` Formulario en xforms Login (usuario y contraseña)
* ```/static/auth/manage-account.xml ```  DETALLAR PENDIENTE
*  ```logout-example.xml``` Ejemplo de botón para cerrar sesión
* ```webapp/login.xq``` DETALLAR PENDIENTE
* ```webapp/logout.xq``` DETALLAR PENDIENTE

## Configuraciones adicionales para una correcta ejecición (sobre Basex 8.3) ##
Estos cambios son necesarios para utilizar el [Módulo Session de basex](http://docs.basex.org/wiki/Session_Module) (manejo de sesión en la aplicación).

1. Modificar el archivo ```.basex``` con las direcciones absolutas de la máquina donde se ejecuta el codigo. ```DBPATH REPOPATH USER PASSWORD WEBPATH```

2. Para ejecutar basex en windows
Remplazar linea número 8 de ```basexhttp.bat``` por:
```
set CP=%PWD%/../BaseX.jar;%PWD%/../lib/basex-api-8.2.3.jar
```
3. Para ejecutar basex en distribuciones linux y MacOS
Remplazar linea número 13 de ```basexhttp``` por: 
```
CP="$BX/BaseX.jar$(printf ":%s" "$BX/lib/"*.jar "$BXCORE/lib/"*.jar):$CLASSPATH""/lib/basex-api-8.2.3.jar"
```
####**Nota:* Paso 2 y 3 se encuentran en el proyecto.  
## Equipo 
* Eli Pacheco 
* Christian Orrego - chd.orrego@gmail.com
* Brayan Gallego 

## Funcionalidades  
* Login
* Register 
* Actualizar Datos
* Cerrar Cuenta
