#!/bin/bash

GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

echo -e "${GREEN}🚀 Starting installation of frontend/backend dependencies...${NC}"

### FRONTEND - Next.js ###
echo -e "${GREEN}📦 Installing Next.js in /frontend...${NC}"
cd frontend
npm i
cd ..

### BACKEND - Express.js ###
echo -e "${GREEN}📦 Installing Express.js in /backend...${NC}"
cd backend
npm i
cd ..

echo -e "${GREEN}✅ Dependency installation complete.${NC}"

if [ ! -f backend/.env ]; then
    echo -e "${RED}⚠️  backend .env file not found. Creating one...${NC}"
    cat <<EOL > backend/.env
MONGODB=( url mongodb )
EOL
    echo -e "${GREEN}✅ backend .env file created with default content.${NC}"
    exit 1
fi

if [ ! -f .env ]; then
    echo -e "${RED}⚠️ .env file not found. Creating one...${NC}"
    cat <<EOL > .env
POSTGRES_USER=user
POSTGRES_PASSWORD=password
POSTGRES_DB=database

MONGO_INITDB_DATABASE=mongodb
EOL
    echo -e "${GREEN}✅ .env file created with default content.${NC}"
fi

echo -e "${GREEN}Starting the applications${NC}"
docker-compose up -d
echo -e "${GREEN}🚀 Installation and application startup complete!${NC}"
