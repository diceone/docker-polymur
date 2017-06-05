FROM golang:1.8.1-alpine 

MAINTAINER Dr. Doom <doom@dev-ops.de>

RUN apk add --no-cache git
RUN go get -u github.com/jamiealquiza/polymur/...
RUN go install github.com/jamiealquiza/polymur/cmd/polymur
CMD ["/go/bin/polymur"]
