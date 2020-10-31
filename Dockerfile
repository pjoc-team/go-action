FROM golang:latest as build

ADD *.sh /

RUN go get -u golang.org/x/lint/golint

ENTRYPOINT ["bash", "-c", "/entrypoint.sh"]