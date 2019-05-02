@rem start-thriftserver.cmd
@rem 设置基础环境变量
set HADOOP_HOME=c:\spark\winutils-master\hadoop-2.7.1
set JAVA_HOME=c:\spark\jdk1.8.0_202
set PATH=%JAVA_HOME%\bin;%PATH%
set SPARK_HOME=c:\spark\spark-2.4.2-bin-hadoop2.7
@运行Spark ThriftServer
java -cp %SPARK_HOME%/conf/*;%SPARK_HOME%/jars/* -Xmx1g org.apache.spark.deploy.SparkSubmit --master local[*] --class org.apache.spark.sql.hive.thriftserver.HiveThriftServer2 --name "Thrift JDBC/ODBC Server" spark-internal
pause
