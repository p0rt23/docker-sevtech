# Don't edit these values unless you know what you are doing.
export INSTALL_JAR="forge-1.12.2-14.23.5.2815-installer.jar"
export SERVER_JAR="forge-1.12.2-14.23.5.2815-universal.jar"

# You can edit these values if you wish.
export MIN_RAM="8192M"
export MAX_RAM="8192M"
export JAVA_PARAMETERS="-XX:+UseG1GC -Dsun.rmi.dgc.server.gcInterval=2147483646 -XX:+UnlockExperimentalVMOptions -XX:G1NewSizePercent=20 -XX:G1ReservePercent=20 -XX:MaxGCPauseMillis=50 -XX:G1HeapRegionSize=32M -Dfml.readTimeout=180 -Dfml.queryResult=confirm"
