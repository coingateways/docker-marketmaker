#!/bin/bash
source /userpass.txt
curl -s --url "http://127.0.0.1:7783" --data "{\"userpass\":\"$userpass\",\"method\":\"my_balance\",\"coin\":\"MORTY\"}" | jq
