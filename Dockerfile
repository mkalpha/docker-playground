FROM node:16

WORKDIR /app

COPY package.json /app

RUN npm install

RUN npx ts-node

COPY . /app

EXPOSE 80

CMD ["npm", "run", "start"]