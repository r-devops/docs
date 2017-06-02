
# Haproxy Load Balancer configuration
## You require three servers

### On all three disble security.

```
# curl https://raw.githubusercontent.com/carreerit/docs/master/init-script.sh|bash
```

## Install webserver on two servers.
###Installation 
```
# wget http://mirror.fibergrid.in/apache//httpd/httpd-2.4.25.tar.gz
# tar -xf httpd-2.4.25.tar.gz
# mkdir /data
# cd httpd-2.4.25
# yum install -y apr-devel apr-util-devel gcc pcre-devel
# ./configure --prefix=/data/apache
# make clean
# make
# make install
# /data/apache/bin/apachectl start
```

### Create a sample website on both the servers for demonstration
```
# cd /data/apache/htdocs
# mkdir demo
# cd demo
# vim index.html
<h1>Welcome to Demo Website</h1>
```

## Haproxy configuration on third server.
```
# yum install haproxy -y
```
### add the following configuration to `/etc/haproxy/haproxy.cfg`
```
###### My Web Server configuration
frontend main *:80
        default_backend web
backend web
        balance roundrobin
        server web01 10.128.0.2:80 check
        server web02 10.128.0.3:80 check
```

#`Note: 10.128.0.2, 10.128.0.3 are server ip addresses and in your case it may change`
### start haproxy
```
# systemctl start haproxy
# ps -ef |grep hap
```
