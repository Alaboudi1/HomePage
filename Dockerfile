FROM node:10
ENV NODE_ENV production
WORKDIR /usr/src/app
COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]
RUN npm install --production --silent || mv node_modules ../ && npm i parcel -g && npm i cssnano
COPY . .
EXPOSE 1234
CMD npm start