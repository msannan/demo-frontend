FROM node:10-alpine

# Create app directory
WORKDIR /app

EXPOSE 8080

COPY package*.json ./

RUN npm install

RUN apk add curl 

COPY server.js ./

CMD [ "npm", "start" ]