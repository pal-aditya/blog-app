FROM node:18

WORKDIR /app

COPY package*.json ./

RUN npm install mysql2

RUN npm install

RUN mkdir -p /app/upload

COPY . .

EXPOSE 8800

CMD ["npm", "start"]
