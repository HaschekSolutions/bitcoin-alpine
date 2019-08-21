# bitcoin-alpine

Simple Alpine linux based Bitcoin node.

## Build

```bash
git clone https://github.com/HaschekSolutions/bitcoin-alpine.git
cd bitcoin-alpine
docker build -t hascheksolutions/bitcoin-alpine .
```

## Start with parameters

You can mount ```/bitcoin``` so you have persistant storage like so:

```bash
docker run -v /data/bitcoin/.bitcoin/:/bitcoin --name=bitcoin -d -p 8333:8333 -p 8332:8332 \
     --restart=always \
     -e RPCUSER=yourusername \
     -e RPCPASSWORD=yourpassword \
     hascheksolutions/bitcoin-alpine
```

## Getting a shell

Since we're running Alpine we don't have bash, but we have ash

```
docker exec -it bitcoin ash
```