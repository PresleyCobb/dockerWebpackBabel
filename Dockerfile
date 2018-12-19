FROM ubuntu:16.04

RUN apt-get update \
    && apt-get install curl -y \
    && apt-get install nodejs -y \
    && apt-get install npm -y

RUN mkdir /docker

WORKDIR /docker

RUN npm init -y \
    && npm install webpack-cli webpack babel-loader @babel/core @babel/preset-env --save-dev

RUN apt-get install nano

RUN mkdir ./src \
    && touch ./src/index.js

COPY webpack.config.js /docker

COPY index.js /docker/src

CMD ["bash"]
