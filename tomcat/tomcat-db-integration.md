### 1) Install Tomcat (Binary Distribution)
```
Follow install.md file 
```

### 2) Download JDBC Driver.
```
# cd /root/apache-tomcat-9.0.0.M21
# cd lib
# wget https://github.com/versionit/customwebapp/raw/master/mysql-connector-java-5.1.40.jar
```

### 3) Download the student application.
```
# cd /root/apache-tomcat-9.0.0.M21
# cd webapps
# wget https://github.com/versionit/customwebapp/raw/master/student.war
```

### 4) Configure JDBC connection to DB in tomcat.
```
# vim /root/apache-tomcat-9.0.0.M21/conf/context.xml
```
#### Note: Add the following comnfiguration just before last line
```
<Resource name="jdbc/TestDB" auth="Container" type="javax.sql.DataSource"
               maxTotal="100" maxIdle="30" maxWaitMillis="10000"
               username="root" password="root" driverClassName="com.mysql.jdbc.Driver"
               url="jdbc:mysql://localhost:3306/test"/>
```
