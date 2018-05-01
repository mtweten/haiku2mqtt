FROM node:alpine

RUN apk add --no-cache git && npm install -g babel-cli

WORKDIR /usr/src/app

COPY . .

RUN npm install && npm run build 

ENTRYPOINT [ "node", "dist/index.js" ]
