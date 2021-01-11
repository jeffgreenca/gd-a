FROM golang:1.14
ENV GOPRIVATE=github.com/jeffgreenca

WORKDIR /project
COPY main.go go.sum go.mod ./

RUN go get -d -v ./...
RUN go install -v ./...

CMD ["gd-a"]
