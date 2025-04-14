@echo off

set JAVA_HOME=C:\Program Files\Java\jdk-17
set CATALINA_HOME=C:\apache-tomcat
set "CATALINA_BASE=%CATALINA_HOME%"

set JAVA_OPTS=-DNodeType=BackgroundProcessing,WebUser,Search 
rem set JAVA_OPTS==%JAVA_OPTS% -DNodeType=Stream 

set JAVA_OPTS=%JAVA_OPTS% -Dname=PEGA-SUPPORT 
set JAVA_OPTS=%JAVA_OPTS% -Didentification.nodeid=PEGA-SUPPORT 
set JAVA_OPTS=%JAVA_OPTS% -Djdk.tls.rejectClientInitiatedRenegotiation=true 
set JAVA_OPTS=%JAVA_OPTS% -Djava.security.egd=file:///dev/urandom 
set JAVA_OPTS=%JAVA_OPTS% -Djava.awt.headless=true

set JAVA_OPTS=%JAVA_OPTS% "-Dpega.logdir=%CATALINA_HOME%\logs"
set JAVA_OPTS=%JAVA_OPTS% "-Dpega.tmpdir=%CATALINA_HOME%\temp"
set JAVA_OPTS=%JAVA_OPTS% "-Dindex.directory=%CATALINA_HOME%\index"
