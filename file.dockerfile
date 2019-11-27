FROM node:dubnium

COPY ./app

CMD yarn global add node-gyp && yarn install

WORKDIR /app
RUN npm install

EXPOSE 3000
VOLUME /app/logs

CMD npm run start
