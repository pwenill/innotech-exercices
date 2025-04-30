# backend/Dockerfile
FROM node:18

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

# Build ton app Node.js
RUN npm run build

EXPOSE 2000

# Démarre avec npm run start (en production)
CMD ["npm", "run", "start"]