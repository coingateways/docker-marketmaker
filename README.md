# Clone and build this repo and container
```
docker build -t dev-marketmaker2 .
```

# Run passing in telegram info
```
docker run -it -e BOT_TOKEN='token1' -e BOT_CHATID='chat123' -e BOT_USERNAME='botusername' komodocakeshop/dev-marketmaker2
```
