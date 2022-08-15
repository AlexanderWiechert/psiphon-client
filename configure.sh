#!/bin/bash

mkdir -p ~/psiphon.client.free
cd psiphon.client.free
curl https://github.com/Psiphon-Labs/psiphon-tunnel-core-binaries/raw/master/linux/psiphon-tunnel-core-x86_64 -L -o psiphon-tunnel-core-x86_64
chmod 755 psiphon-tunnel-core-x86_64
echo './psiphon-tunnel-core-x86_64 -config client.free.conf' > run.client\nchmod 755 run.client
./run.client
