FROM node:alpine

WORKDIR '/api'

COPY package.json .
RUN rm -rf ./node_modules
RUN npm install

COPY . .

CMD ["npm", "run", "dev"]