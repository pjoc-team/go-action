FROM golang:latest as build

ADD *.sh /

RUN go get -u golang.org/x/lint/golint

RUN chmod +x /*.sh

CMD ["bash", "-c", "/entrypoint.sh"]