FROM node:18.13.0-alpine
EXPOSE 5000

COPY . /app
WORKDIR /app

RUN corepack enable
RUN yarn install
RUN yarn build
CMD ["node", "dist/index.js"]