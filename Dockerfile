FROM alpine:latest

RUN apk update && apk add bash zip && rm -rf /var/cache/apk/*

WORKDIR /var/scripts/backup

VOLUME [ "/var/scripts/backup/backups" ]

COPY . .

RUN chmod +x -R ./

CMD ["./index.sh"]