#"!/bin/bash
#PROCESS=$(ps -ef | grep  "psiphon-tunnel-core-x86_64 -config client.free.conf" |grep -v grep | awk {'print $2'})

#kill -9 $PROCESS

userdel psiphon 
groupdel psiphon


rm  -rf /var/log/psiphon
rm -rf /etc/init.d/psiphon
