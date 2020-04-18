FROM node:8-alpine

COPY package*.json ./

RUN npm install

COPY . .

ENTRYPOINT [ "node", "host.js" ]

EXPOSE 3002
CMD [ "npm", "start" ]