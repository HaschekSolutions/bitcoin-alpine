<p align="center">
  <a href="" rel="noopener">
 <img src="https://pictshare.net/58pnya.png" alt="Bitcoin Alpine logo"></a>
</p>

<h1 align="center">Bitcoin On Alpine</h1>

<h4 align="center">Bitcoin core full node on an 10mb Docker image</h4>

<div align="center">

![](https://img.shields.io/badge/Alpine-Linux-brightgreen.svg)
[![](https://img.shields.io/docker/pulls/hascheksolutions/bitcoin-alpine?color=brightgreen)](https://hub.docker.com/r/hascheksolutions/bitcoin-alpine)
[![](https://img.shields.io/docker/cloud/build/hascheksolutions/bitcoin-alpine?color=brightgreen)](https://hub.docker.com/r/hascheksolutions/bitcoin-alpine/builds)
[![Apache License](https://img.shields.io/badge/license-Apache-blue.svg?style=flat)](https://github.com/HaschekSolutions/bitcoin-alpine/blob/master/LICENSE)
[![HitCount](http://hits.dwyl.io/HaschekSolutions/bitcoin-alpine.svg)](http://hits.dwyl.io/HaschekSolutions/bitcoin-alpine)
[![](https://img.shields.io/github/stars/HaschekSolutions/bitcoin-alpine.svg?label=Stars&style=social)](https://github.com/HaschekSolutions/bitcoin-alpine)

</div>


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