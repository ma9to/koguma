FROM node:9.2.0-alpine
COPY package.json /src/package.json
WORKDIR /src
RUN yarn install
COPY app.js /src
CMD ["node", "/src/app.js"]