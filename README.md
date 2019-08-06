# WIP
Fun to work with this tech
# Clone and build this repo and container
```
git clone https://github.com/komodo-howto/docker-atomicdex-api-marketmaker.git
cd docker-atomicdex-api-marketmaker
docker build -t komodohowto/dev-atomicdex-api .

And this is also handy
```
docker build --no-cache  -t  komodocakeshop/dev-atomicdex-api .
```
```

# Run passing in telegram info
```
docker run -it -e BOT_TOKEN='token1' -e BOT_CHATID='chat123' -e BOT_USERNAME='botusername' komodohowto/dev-marketmaker2
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
