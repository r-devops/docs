# Steps to be performed on DB Server.
```
# yum install mariadb mariadb-server -y
# systemctl enable mariadb
# systemctl start mariadb
# wget
# mysql -u root < student.sql
```

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
               username="USERNAME" password="PASSWORD" driverClassName="com.mysql.jdbc.Driver"
               url="jdbc:mysql://MYSQL_SERVER_IP:3306/DATABASE_NAME"/>
```
#### Note :: Change MYSQL SERVER IP , USERNAME, PASSWORD.
#### In my case , I created DB as `student` and user as `student` and password also as `student`
#### After chaging those values my configuration looks like following.
```
<Resource name="jdbc/TestDB" auth="Container" type="javax.sql.DataSource"
               maxTotal="100" maxIdle="30" maxWaitMillis="10000"
               username="student" password="student" driverClassName="com.mysql.jdbc.Driver"
               url="jdbc:mysql://10.128.0.6:3306/student"/>
```
