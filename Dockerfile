FROM alpine:latest

MAINTAINER Sebastian Sterk <sebastian@wiuwiu.de>

RUN apk apk --update add --no-cache python3
RUN pip3 install --upgrade pip setuptools httpie
RUN rm -r /root/.cache

ENTRYPOINT [ "http" ]
CMD ["--help"]
