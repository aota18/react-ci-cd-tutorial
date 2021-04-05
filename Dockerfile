# base image
FROM node:latest

# set working directory
WORKDIR /app

# ADD `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# app dependencies, install 및 caching
COPY package.json /app/package.json

RUN npm install

# RUN APP
CMD ["npm", "start"]

