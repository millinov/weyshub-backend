FROM node:14

WORKDIR /usr/src/app

RUN npm install pm2 -g

RUN npm install -g sequelize-cli

COPY . .

RUN npm install

EXPOSE 5000

COPY start.sh .

RUN chmod +x start.sh

CMD ["./start.sh"]
