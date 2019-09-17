#!/bin/bash
source /userpass.txt
curl -s --url "http://127.0.0.1:7783" --data "{\"userpass\":\"$userpass\",\"method\":\"sell\",\"base\":\"RICK\",\"rel\":\"MORTY\",\"volume\":\"1\",\"price\":\"3.5\"}"  | jq
