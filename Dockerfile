FROM node:18-alpine

ENV PUBLIC_API_BASE_URL=http://localhost:8080

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 8080

CMD [ "npm", "run", "dev" ]
