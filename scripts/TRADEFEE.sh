#!/bin/bash
source /userpass.txt
COIN=${1}
curl -s --url "http://127.0.0.1:7783" --data "{\"userpass\":\"$userpass\",\"method\":\"get_trade_fee\",\"coin\":\"${COIN}\"}" | jq
