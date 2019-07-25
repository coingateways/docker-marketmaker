#!/bin/bash
source /userpass.txt
RESULT=$(curl -s --url "http://127.0.0.1:7783" --data "{\"userpass\":\"$userpass\",\"method\":\"electrum\",\"coin\":\"RICK\",\"servers\":[{\"url\":\"electrum1.cipig.net:10017\"},{\"url\":\"electrum2.cipig.net:10017\"},{\"url\":\"electrum3.cipig.net:10017\"}]}" | jq '')
/usr/local/bin/telegram_send.sh "RICK: ${RESULT}"
