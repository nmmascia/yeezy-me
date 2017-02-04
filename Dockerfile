FROM node:6.4.0

RUN mkdir -p /nodeapp
WORKDIR /nodeapp

COPY package.json /nodeapp
COPY yarn.lock /nodeapp

RUN npm install -g yarn \
  && yarn

COPY src /nodeapp/src

EXPOSE 8080
