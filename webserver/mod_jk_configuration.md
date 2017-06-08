###### Ref Link : https://jeljo.wordpress.com/2013/11/23/apache-2-4-7-tomcat-7-integration/

# Steps to be perform on web server.

### 1) Install web server from source.
#### https://github.com/carreerit/docs/blob/master/webserver/install.md

### 2) Install Tomcart from Binary Distribution.
#### https://github.com/carreerit/docs/blob/master/tomcat/install.md

### 3) Download and install tomcat connector source in web server.
```
# cd /opt
# wget http://www-eu.apache.org/dist/tomcat/tomcat-connectors/jk/tomcat-connectors-1.2.42-src.tar.gz
# tar -xf tomcat-connectors-1.2.42-src.tar.gz
# cd tomcat-connectors-1.2.42-src/native

# ./configure --with-apxs=/data/apache/bin/apxs
# make
# make install
```
### 4) Configure web server for tomcat connector.
#### Add the following lines to httpd configuration
#### Filename : `/data/apache/conf/httpd.conf`
```
## Adding this configuration for tomcat integration
LoadModule jk_module modules/mod_jk.so
Include conf/mod_jk.conf
```
#### Create the following file.
#### Filename : `/data/apache/conf/mod_jk.conf`
```
JkWorkersFile /data/apache/conf/workers.properties
JkLogFile /data/apache/logs/mod_jk.log
JkLogLevel info
JkLogStampFormat "[%a %b %d %H:%M:%S %Y]"
JkOptions +ForwardKeySize +ForwardURICompat -ForwardDirectories
JkRequestLogFormat "%w %V %T"
JkMount /* tomcatA
```

#### Create workers file.
#### Filename : `/data/apache/conf/workers.properties`
```
worker.list=tomcatA
# Set properties
worker.tomcatA.type=ajp13
worker.tomcatA.host=10.128.0.5
worker.tomcatA.port=8009
```

### 5) Finally restart your web server.
```
# /data/apache/bin/apachectl stop
# /data/apache/bin/apachectl start
```
