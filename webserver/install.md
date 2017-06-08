## Installation of Apache WEb Server.

### 1) Disbale SELINUX and Firewall
`# curl https://raw.githubusercontent.com/carreerit/docs/master/init-script.sh|bash`

### 2) Download apache web server.
```
# wget http://mirror.fibergrid.in/apache//httpd/httpd-2.4.25.tar.gz
# tar -xf httpd-2.4.25.tar.gz
```

### 3) Install required softwares
`# yum install apr-devel apr-util-devel gcc pcre-devel -y`

### 4) Install web server.
```
# mkdir /data
# cd httpd-2.4.25
# ./configure --prefix=/data/apache
# make
# make install
```

### 5) Start apache web service.
```
# cd /data/apache/bin
# ./apachectl start
```

### 6) Verify apache service.
`# ps -ef |grep http`

or

`# netstat -lntp `
