#!/bin/bash

echo 'version: "2"
services:
  node:
    image: "node:19"
    user: "node"
    working_dir: /home/node/app
    environment:
      - NODE_ENV=production
    volumes:
      - ./app:/home/node/app
    ports:
      - 3000:3000/tcp
    command: "npm start"' > docker-compose.yml

if [ ! -d app ];then
        mkdir app
fi

wget -P app https://raw.githubusercontent.com/plesk/node-hello-world/master/app.js

echo '{
  "name" : "foo",
  "dependencies" : {
    "bar" : "0.1.x"
  },
  "scripts": {
    "start" : "node app.js"
  }
}' > app/package.json

sleep 1
docker compose up -d
