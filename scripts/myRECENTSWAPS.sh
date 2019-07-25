#!/bin/bash
UUID=${1}
source /userpass.txt
curl -s --url "http://127.0.0.1:7783" --data "{\"userpass\":\"$userpass\",\"method\":\"my_recent_swaps\",\"from_uuid\":\"${UUID}\",\"limit\":10}" | jq
