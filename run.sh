#!/bin/bash
source telegram.txt
docker run --name dev-atomicdex-api -i -t -e BOT_TOKEN=$BOT_TOKEN -e BOT_CHATID=$BOT_CHATID -e BOT_USERNAME=$BOT_USERNAME komodocakeshop/dev-atomicdex-api
