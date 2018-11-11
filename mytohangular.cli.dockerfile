FROM node:10.13-alpine as node-angular-cli

LABEL authors="John Papa"

#Linux setup
RUN apk update \
  && apk add --update alpine-sdk \
  && apk del alpine-sdk \
  && rm -rf /tmp/* /var/cache/apk/* *.tar.gz ~/.npm \
  && npm cache verify \
  && sed -i -e "s/bin\/ash/bin\/sh/" /etc/passwd

#Angular CLI
RUN npm install -g @angular/cli


# Angular CLI container
# docker image build -t angularclitoh -f mytohangular.cli.dockerfile .
# docker container run -it --name angularclitoh -v ${pwd}:/tmp angularclitoh sh