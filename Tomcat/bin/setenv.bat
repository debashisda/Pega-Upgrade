@echo off

set JAVA_HOME=C:\Program Files\Java\jdk-17
set CATALINA_HOME=C:\Users\debas\Documents\Pega Upgrade POC\apache-tomcat
set "CATALINA_BASE=%CATALINA_HOME%"
set "CATALINA_PID=%CATALINA_HOME%\bin\catalina.pid"

rem set JAVA_OPTS=-DapplicableNodeTypes=BackgroundProcessing,WebUser,Search,Batch,RealTime,ADM
set JAVA_OPTS=%JAVA_OPTS% -DNodeType=BackgroundProcessing,WebUser,Search
rem JAVA_OPTS=%JAVA_OPTS% -DNodeType=Stream
set JAVA_OPTS=%JAVA_OPTS% -Dname=PEGA-SUPPORT 
set JAVA_OPTS=%JAVA_OPTS% -Didentification.nodeid=PEGA-SUPPORT 
set JAVA_OPTS=%JAVA_OPTS% -Djdk.tls.rejectClientInitiatedRenegotiation=true 
set JAVA_OPTS=%JAVA_OPTS% -Djava.security.egd=file:///dev/urandom 
set JAVA_OPTS=%JAVA_OPTS% -Djava.awt.headless=true

rem Overriding the Logs directory
set JAVA_OPTS=%JAVA_OPTS% "-Dpega.logdir=%CATALINA_HOME%\logs"
set JAVA_OPTS=%JAVA_OPTS% "-Dpega.tmpdir=%CATALINA_HOME%\temp"
set JAVA_OPTS=%JAVA_OPTS% "-Dindex.directory=%CATALINA_HOME%\index"
set JAVA_OPTS=%JAVA_OPTS% "-Xloggc:%CATALINA_HOME%/logs/PEGA-SUPPORT_gcstats.log"

rem set JAVA_OPTS=%JAVA_OPTS% -Djavax.sql.DataSource.Factory=org.apache.commons.dbcp.BasicDataSourceFactory
set JAVA_OPTS=%JAVA_OPTS% -Djavax.sql.DataSource.Factory=org.apache.tomcat.dbcp.dbcp2.BasicDataSourceFactory
set JAVA_OPTS=%JAVA_OPTS% -XX:+HeapDumpOnOutOfMemoryError 
set JAVA_OPTS=%JAVA_OPTS% -XX:+UseG1GC
set JAVA_OPTS=%JAVA_OPTS% -XX:+UseStringDeduplication 
set JAVA_OPTS=%JAVA_OPTS% -XX:MaxGCPauseMillis=900 
set JAVA_OPTS=%JAVA_OPTS% -XX:GCTimeRatio=9 
set JAVA_OPTS=%JAVA_OPTS% -XX:+DisableExplicitGC 
set JAVA_OPTS=%JAVA_OPTS% -XX:+ParallelRefProcEnabled 
set JAVA_OPTS=%JAVA_OPTS% -XX:MaxTenuringThreshold=4
set JAVA_OPTS=%JAVA_OPTS% -XX:ConcGCThreads=2
set JAVA_OPTS=%JAVA_OPTS% -XX:InitiatingHeapOccupancyPercent=50
set JAVA_OPTS=%JAVA_OPTS% -verbose:gc 
set JAVA_OPTS=%JAVA_OPTS% -server  
set JAVA_OPTS=%JAVA_OPTS% -XX:+PrintCodeCache 
set JAVA_OPTS=%JAVA_OPTS% -XX:+UseCodeCacheFlushing
