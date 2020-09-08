FROM alpine:latest

RUN wget -O /usr/bin/aviator https://github.com/JulzDiverse/aviator/releases/download/v1.7.0/aviator-linux-amd64 && chmod +x /usr/bin/aviator

ENTRYPOINT ["/usr/bin/aviator"]
CMD []
