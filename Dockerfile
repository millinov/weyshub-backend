FROM node:14

WORKDIR /usr/src/app

RUN npm install pm2 -g

RUN npm install -g sequelize-cli

COPY . .

RUN npm install

RUN sequelize-cli db:migrate

EXPOSE 5000

CMD [ "pm2-runtime", "start", "ecosystem.config.js" ]
