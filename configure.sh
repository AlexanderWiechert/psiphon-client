#!/bin/bash

echo "### install psiphon client ###"

mkdir -p ~/psiphon.client.free
cd psiphon.client.free
curl https://github.com/Psiphon-Labs/psiphon-tunnel-core-binaries/raw/master/linux/psiphon-tunnel-core-x86_64 -L -o /usr/local/bin/psiphon-tunnel-core-x86_64
chmod 755 /usr/local/bin/psiphon-tunnel-core-x86_64


echo "### add init script ###"

INIT_SCRIPT="local.psiphon"


cp $INIT_SCRIPT /etc/init.d/
chmod 755 /etc/init.d/$INIT_SCRIPT
sudo update-rc.d $INIT_SCRIPT defaults
chkconfig --add $INIT_SCRIPT
chkconfig $INIT_SCRIPT on
