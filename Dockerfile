FROM node:6.4.0

RUN mkdir -p /nodeapp
WORKDIR /nodeapp

COPY package.json /nodeapp
RUN npm install

COPY src /nodeapp/src

EXPOSE 8080
