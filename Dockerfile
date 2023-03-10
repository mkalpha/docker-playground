FROM  node:16-alpine

WORKDIR /app

COPY package.json /app

RUN npm install

RUN rm -rf ./build

COPY . /app

EXPOSE 80

CMD ["npm", "run", "start"]