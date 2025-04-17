#!/bin/bash

GREEN='\033[0;32m'
NC='\033[0m'

start_frontend() {
  echo -e "${GREEN}🔷 Запуск frontend (Svelte)...${NC}"
  cd frontend
  npm install
  npm run dev &
  FRONT_PID=$!
  cd ..
}

start_backend() {
  echo -e "${GREEN}🔶 Запуск backend (NestJS)...${NC}"
  cd backend
  npm install
  npm run start:dev &
  BACK_PID=$!
  cd ..
}

cleanup() {
  echo -e "\n${GREEN}⏹ Остановка процессов...${NC}"
  kill $FRONT_PID $BACK_PID
  exit 0
}

trap cleanup SIGINT

start_frontend
start_backend

wait
