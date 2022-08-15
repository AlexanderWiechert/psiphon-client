#!/bin/bash

echo "### install psiphon client ###"
curl https://github.com/Psiphon-Labs/psiphon-tunnel-core-binaries/raw/master/linux/psiphon-tunnel-core-x86_64 -L -o /usr/local/bin/psiphon-tunnel-core-x86_64
chmod 755 /usr/local/bin/psiphon-tunnel-core-x86_64


echo "### configure system ###"
#seradd psiphon -M -s /usr/sbin/nologin
#groupadd psiphon
#usermod -a -G psiphon $USER

INIT_SCRIPT="psiphon"

cp $INIT_SCRIPT /etc/init.d/
#chmod 755 /etc/init.d/$INIT_SCRIPT

update-rc.d $INIT_SCRIPT defaults
#source /etc/init.d/$INIT_SCRIPT

LOG_DIR="/var/log/psiphon"
mkdir -p $LOG_DIR
#chown -R psiphon:psiphon $LOG_DIR
#chmod -R 755 $LOG_DIR

echo "### start psiphon client ###"
/etc/init.d/$INIT_SCRIPT start
