FROM golang:alpine as builder
RUN apk update && apk add --no-cache git
RUN mkdir -p $GOPATH/src/main/hello-world
WORKDIR $GOPATH/src/main/hello-world/
COPY . .
RUN go get -d -v
RUN go build -o /bin/hello-go

FROM scratch
COPY --from=builder /bin/hello-go /bin/hello-go

ENTRYPOINT ["/bin/hello-go"]
