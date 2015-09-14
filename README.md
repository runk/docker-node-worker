### docker-node-worker

This image allows you to clone git repo and start nodejs processes you need. Based on the
https://hub.docker.com/r/google/nodejs-runtime/

Example:

```shell
docker run -e repo=git@github.com:runk/foobar.git -e "key=private\nkey\ngoes\nhere" -it runk/docker-node-worker
```
