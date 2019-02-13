FROM node:10

WORKDIR /usr/src/app

COPY package.json yarn.lock ./

RUN yarn install

COPY . .

EXPOSE 3000
CMD ["node", "server/index.js"]
