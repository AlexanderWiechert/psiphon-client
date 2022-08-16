# Psiphond  client

Checkout https://github.com/AlexanderWiechert/psiphon-server and build server. 

Copy Token from psiphon-server output and paste it under TargetServerEntry in client.conf

Start container and add 127.0.0.1 8081 as Proxy in your browser.

```
{
"LocalHttpProxyPort" : 8081,
"LocalSocksProxyPort" : 1081,
"PropagationChannelId" : "FFFFFFFFFFFFFFFF",
"SponsorId" :            "FFFFFFFFFFFFFFFF",
"TargetServerEntry" : "__TOKEN__"
}
```