#!/bin/bash
source /userpass.txt
UUID=${1}
curl -s --url "http://127.0.0.1:7783" --data "{\"userpass\":\"$userpass\",\"method\":\"cancel_order\",\"uuid\":\"${UUID}\"}" | jq
