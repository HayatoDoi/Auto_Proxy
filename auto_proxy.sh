#!/usr/bin/env sh
#================================================================

# auto_proxy.sh
# Copyright (c) 2016, no_______nonono
# プロキシを使用する無線に接続した時、自動的に環境変数を変えるよ。

#================================================================

# _設定情報______________________________________________________

# -無線インターフェイス
nwinterface="*****"
# -proxyを使用するSSID
sSSID="********"
# -proxyサーバのURL
PROXYSERVER="********.jp"
# -proxyサーバのポート
PORT="8080"
# -proxyをしないアドレス
NOPROXY="localhost,127.0.0.0/8,::1,192.168.*.*"

# _設定情報_e____________________________________________________

# 接続されているSSIDの習得 ( 環境によって異なるので各自修正してね )
nSSID=`iwconfig $nwinterface | grep "ESSID:\"" | cut -d"\"" -f2 | cut -d"\"" -f1`

# 接続しているSSIDがsSSIDの時
if [ "$sSSID" = "$nSSID" ];then
	echo "set proxy"
	export http_proxy="http://${PROXYSERVER}:${PORT}"
	export https_proxy="https://${PROXYSERVER}:${PORT}"
	export ftp_proxy="ftp://${PROXYSERVER}:${PORT}"
	export socks_proxy="socks://${PROXYSERVER}:${PORT}"
	export noproxy="${NOPROXY}"
	
else
	echo "unset proxy"
	unset http_proxy
	unset https_proxy
	unset ftp_proxy
	unset socks_proxy
	unset no_proxy
fi
