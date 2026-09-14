#!/bin/zsh

export HTTP_PROXY="http://127.0.0.1:7891"
export HTTPS_PROXY="http://127.0.0.1:7891"
export ALL_PROXY="http://127.0.0.1:7891"

export http_proxy="$HTTP_PROXY"
export https_proxy="$HTTPS_PROXY"
export all_proxy="$ALL_PROXY"

export NO_PROXY="localhost,127.0.0.1,::1"
export no_proxy="$NO_PROXY"

echo "代理终端已启动"
echo "代理地址：http://127.0.0.1:7891"
echo

cd "/Users/slumpyfufu/Desktop/Projects" || exit 1
exec /bin/zsh -l
