#!/bin/bash
source /userpass.txt
RESULT=$(curl -s --url "http://127.0.0.1:7783" --data "{\"userpass\":\"$userpass\",\"method\":\"orderbook\",\"base\":\"KMD\",\"rel\":\"DOGE\"}" | jq '.')
/usr/local/bin/telegram_send.sh "${RESULT}"
echo ${RESULT}
