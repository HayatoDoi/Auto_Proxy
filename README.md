# Auto_Proxy  
### プロキシを使用したいwifiに接続した時、自動的に環境変数を変えます。  
  
#### install  
`git clone https://github.com/nikaidoumari/Auto_Proxy.git`  
`cd Auto_Proxy`  
`cp ./auto_proxy.sh ~/.auto_proxy.sh`  
`echo "source ~/.auto_proxy.sh" >> ~/.bashrc`  
#### use  
To edit the .auto_proxy.sh  
`vim ~/.auto_proxy.sh`  

```  
nwinterface="*****" #Your interface name  
sSSID="********" #SSID of wifi to use a proxy  
PROXYSERVER="********.jp" #URL of the proxy server  
PORT="8080" #port of the proxy server
```
