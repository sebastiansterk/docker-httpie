FROM alpine:3.18

RUN apk add --no-cache python3 py3-pip && \
    pip3 install --no-cache-dir --upgrade pip setuptools httpie

RUN addgroup -S httpie && adduser -S httpie -G httpie
USER httpie

WORKDIR /home/httpie

ENTRYPOINT [ "http" ]
CMD ["--help"]
