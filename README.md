# Clone and build this repo and container
```
git clone https://github.com/komodo-howto/docker-atomicdex-api-marketmaker.git
cd docker-atomicdex-api-marketmaker
docker build -t komodo-howto/dev-marketmaker2 .
```

# Run passing in telegram info
```
docker run -it -e BOT_TOKEN='token1' -e BOT_CHATID='chat123' -e BOT_USERNAME='botusername' komodo-howto/dev-marketmaker2
```
# Notes
All executables are stored in /usr/local/bin with randomly generated files in the root of the container at /passphrase.txt and /userpass.txt
# View RICK & MORTY Orderbooks
```
start.sh
RICKconnect.sh
MORTYconnect.sh
RICKMORTYorderbook.sh
```
