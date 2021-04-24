REM Home directory of the demo tool
SET TOOL_HOME=<Specify the directory where the tool artifacts will be placed>

REM Full path to the Java 11 location
SET JAVA_CMD=<Specify the path to the Java 11 'java' executable>

REM Dependent jar file locations
SET TOOL_LIB=%TOOL_HOME%\lib
SET JARS=%TOOL_LIB%\AmazonElastiCacheDemo.jar;%TOOL_LIB%\AmazonElastiCacheClusterClient-no-version.jar

REM Config file location for the demo tool
SET TOOL_CONFIG=%TOOL_HOME%\config\Memcached_config.properties

REM Run the demo tool
%JAVA_CMD% -classpath %JARS% -DCONFIG_FILE_NAME=%TOOL_CONFIG% com.amazonaws.elasticachedemo.MemcachedElastiCacheDemo

pause
