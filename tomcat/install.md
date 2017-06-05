### 1) Install Java 
```
# yum install java -y
```

### 2) Download tomcat from internet.

```
# wget http://mirror.fibergrid.in/apache/tomcat/tomcat-9/v9.0.0.M21/bin/apache-tomcat-9.0.0.M21.tar.gz
# tar -xf apache-tomcat-9.0.0.M21.tar.gz
# cd apache-tomcat-9.0.0.M21
# cd bin
# ./startup.sh
```

### 3) Verify tomcat is running or not.

```
# ps -ef |grep tomcat
# netstat -lntp 
```
