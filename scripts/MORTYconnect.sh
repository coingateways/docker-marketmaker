#!/bin/bash
source /userpass.txt
RESULT=$(curl -s --url "http://127.0.0.1:7783" --data "{\"userpass\":\"$userpass\",\"method\":\"electrum\",\"coin\":\"MORTY\",\"servers\":[{\"url\":\"electrum1.cipig.net:10018\"},{\"url\":\"electrum2.cipig.net:10018\"},{\"url\":\"electrum3.cipig.net:10018\"}]}" | jq '.')
/usr/local/bin/telegram_send.sh "MORTY: ${RESULT}"
