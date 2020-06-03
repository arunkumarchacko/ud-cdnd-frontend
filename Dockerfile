
FROM node:13
WORKDIR /usr/src/app
COPY package*.json ./
COPY . .
RUN npm install -g cordova ionic
RUN npm install -g bower
RUN npm install -g gulp

RUN npm install


EXPOSE 8080

CMD ["ionic", "serve"]
