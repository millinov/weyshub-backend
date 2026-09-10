FROM node:14-alpine

WORKDIR /usr/src/app

RUN npm install pm2 -g

RUN npm install -g sequelize-cli

COPY . .

RUN npm install

EXPOSE 5000

CMD ["sh", "-c", "sequelize-cli db:migrate && pm2-runtime start ecosystem.config.js"]
