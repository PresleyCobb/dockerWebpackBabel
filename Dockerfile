FROM ubuntu:16.04

RUN apt-get update \
    && apt-get install curl -y \
    && curl -sL https://deb.nodesource.com/setup_11.x | bash - \
    && apt-get install -y nodejs

RUN mkdir /docker

WORKDIR /docker

RUN npm init -y \
    && npm install webpack-cli webpack babel-loader @babel/core @babel/preset-env --save-dev

RUN apt-get install nano

RUN mkdir ./src \
    && touch ./src/index.js

CMD []
