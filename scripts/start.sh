#!/bin/bash
source /passphrase.txt
source /userpass.txt
cd /usr/local/bin
stdbuf -oL /usr/local/bin/mm2 "{\"gui\":\"MM2GUI\",\"netid\":9999, \"userhome\":\"/${HOME#"/"}\", \"passphrase\":\"$passphrase\", \"rpc_password\":\"$userpass\"}" > /usr/local/bin/mm2.log 2>&1  &
sleep 2
ps aux | grep mm2
