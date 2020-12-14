## Instructions

```bash
# on mac, ensure docker is running:
# eval $(docker-machine env default)

# build the container into hello-go:latest
docker build -t hello-go .

# run it
docker run --rm -it hello-go:latest

# check image size, it should be around 2MB
docker images | grep hello-go
```
