FROM golang:latest

ENV GOPROXY https://goproxy.cn,direct
WORKDIR $GOPATH/src/github.com/guicai123/gin-v2
COPY . $GOPATH/src/github.com/guicai123/gin-v2
RUN go build .

EXPOSE 8000
ENTRYPOINT ["./go-gin-example"]
