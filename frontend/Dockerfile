# frontend/Dockerfile
FROM node:18

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

# Build le projet Next.js
RUN npm run build

EXPOSE 3000

# Lance Next.js en mode production
CMD ["npm", "run", "start"]