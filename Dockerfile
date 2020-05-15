FROM node:12.7-alpine

LABEL mantainer="Devsbetstarters <devs@betstarters.com>"
RUN echo "gitlab.betstarters.com 151.80.26.220" >> /etc/resolv.conf

RUN apk --update --no-cache \
    add jq rsync openssh-client bash git perl curl openssh-client

RUN npm install -g ajv@^6.9.1
RUN npm install -g @angular/compiler-cli@8.0.0
RUN npm install -g @angular/cli@8.0.2

