FROM node:alpine

WORKDIR '/app'

COPY package.json .

RUN rm -rf ./node_modules

RUN npm install

COPY . .

EXPOSE 5000

CMD ["npm", "run", "dev"]