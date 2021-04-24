# Home directory of the demo tool
TOOL_HOME=<Specify the directory where the tool artifacts will be placed>

# Full path to the Java 11 location
JAVA_CMD=<Specify the path to the Java 11 'java' executable>

# Dependent jar file locations
TOOL_LIB=${TOOL_HOME}/lib
JARS=${TOOL_LIB}/AmazonElastiCacheDemo.jar:${TOOL_LIB}/jedis-3.5.2.jar:${TOOL_LIB}/commons-pool2-2.6.2.jar:${TOOL_LIB}/slf4j-api-1.7.30.jar:${TOOL_LIB}/slf4j-log4j12-1.7.30.jar:${TOOL_LIB}/log4j-1.2.17.jar

# Config file location for the demo tool
TOOL_CONFIG=${TOOL_HOME}/config/Redis_ClusterMode_config.properties

# Run the demo tool
${JAVA_CMD} -classpath ${JARS} -DCONFIG_FILE_NAME=${TOOL_CONFIG} com.amazonaws.elasticachedemo.RedisElastiCacheClusterModeDemo
