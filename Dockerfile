ARG PARENT_IMAGE

FROM node:14.15.3-alpine AS build
WORKDIR /app

COPY artifacts/src/rendering .

EXPOSE 3000
RUN npm install
RUN npx eslint './src/**/*.tsx' './src/**/*.ts' './scripts/**/*.ts'
ENTRYPOINT npm run start:production