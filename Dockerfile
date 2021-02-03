FROM node:8-alpine
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY . .
RUN apk add --update python make g++\
   && rm -rf /var/cache/apk/*
RUN npm install
EXPOSE 3000
CMD [ "node", "server.js" ]