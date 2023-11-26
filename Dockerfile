FROM node:16.16.0
LABEL authors="thesi"

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

RUN npm run build

WORKDIR ./dist
CMD ["npm", "run", "serve"]
EXPOSE 8080 8080
