FROM node:14.11.0-alpine3.11

RUN mkdir /frontend
WORKDIR /frontend

COPY package.json /frontend/package.json
COPY yarn.lock /frontend/yarn.lock
RUN yarn install

COPY . /frontend

EXPOSE 3000

CMD ["npm", "start"]
