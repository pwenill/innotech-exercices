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

if [ ! -f .env ]; then
    echo -e "${RED}❌ Missing .env file. Please check the documentation.${NC}"
    exit 1
fi

echo -e "${GREEN}Starting the applications${NC}"
docker-compose up -d
echo -e "${GREEN}🚀 Installation and application startup complete!${NC}"
