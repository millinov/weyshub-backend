#!/bin/sh
sequelize-cli db:migrate
exec pm2-runtime start ecosystem.config.js