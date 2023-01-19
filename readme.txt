My nginx server for managing my web stuff. Needs a proxy overlay network that all the web stuff sits on:

```
docker network create --attachable --driver overlay proxy
```
