:: Genera un WAR, lo copia en Tomcat y lo ejecuta con el contexto ROOT

call npm run build
call gradlew war

:: Rutas a configurar
SET tomcat="C:\MisProgramas\apache-tomcat-8.5.28"
SET newWar="build\libs\SIFE1701-0.0.1-SNAPSHOT.war"

SET fileWar= %tomcat%"\webapps\ROOT.war"

:: TODO: Mejorar eliminando también la carpeta ROOT pero manteniendo /upload y /tmp
IF EXIST %fileWar% del %fileWar%

copy %newWar% %fileWar%

call %tomcat%\bin\startup.bat
