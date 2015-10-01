Login Xforms-Basex 
==================
Este proyecto contine 
* [ ```/static/auth/login.xml```](/basex/webapp/static/auth/login.xml) Formulario en xforms Login (usuario y contraseña). En la validación exitosa redirecciona. 
* [```/static/auth/manage-account.xml ```](/basex/webapp/static/auth/manage-account.xml)  Creación de cuenta.
* [```logout-example.xml```](/basex/webapp/static/auth/logout-example.xml) Ejemplo de uso del botón para cerrar sesión.
* [```webapp/login.xq```](/basex/webapp/login.xq) Valida los datos ingresados en ```login.xml``` y crea la variable de sesión ```user``` con el valor del identificador del usuario. 
* [```webapp/logout.xq```](/basex/webapp/logout.xq) Elimina las variables de sesión y cierra la sesión. 

## Configuraciones adicionales para una correcta ejecución (sobre Basex 8.3) ##
Estos cambios son necesarios para utilizar el [Módulo Session de basex](http://docs.basex.org/wiki/Session_Module) (manejo de sesión en la aplicación).

1. Modificar el archivo ```.basex``` con las direcciones absolutas de la máquina donde se ejecuta el código. 
```DBPATH REPOPATH USER PASSWORD WEBPATH```

2. Para ejecutar basex en windows
Remplazar linea número 8 de ```basexhttp.bat``` por:

```set CP=%PWD%/../BaseX.jar;%PWD%/../lib/basex-api-8.2.3.jar```

3. Para ejecutar basex en distribuciones linux y MacOS
Remplazar linea número 13 de ```basexhttp``` por: 

```CP="$BX/BaseX.jar$(printf ":%s" "$BX/lib/"*.jar "$BXCORE/lib/"*.jar):$CLASSPATH""/lib/basex-api-8.2.3.jar"```

#### Nota: Paso 2 y 3 se encuentran en el proyecto.  
## Equipo 
* Eli Pacheco 
* Christian Orrego
* Brayan Gallego 

## Funcionalidades  
* Login (Redirección en caso de éxito) - Creación de variable de sesión ```user```
* Registro 
* Actualizar Datos 
* Cerrar sesión 