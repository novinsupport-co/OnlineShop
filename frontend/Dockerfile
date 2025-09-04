FROM node:20-alpine

RUN apk add --no-cache bash curl netcat-openbsd

WORKDIR /var/www/html/frontend

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh


