FROM python:3.10-alpine

RUN apk add --no-cache curl git && \
    curl -sSL -o /ci.sh https://download.sourceclear.com/ci.sh && \
    chmod +x ci.sh && \
    adduser -D scanuser

WORKDIR /app

USER scanuser

ENTRYPOINT [ "sh", "-c", "/ci.sh" ]
