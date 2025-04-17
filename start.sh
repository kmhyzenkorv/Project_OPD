#!/bin/bash

GREEN='\033[0;32m'
NC='\033[0m'

start_frontend() {
  echo -e "${GREEN}🔷 Запуск Front (Svelte)...${NC}"
  cd Front
  npm install
  npm run dev &
  FRONT_PID=$!
  cd ..
}

start_backend() {
  echo -e "${GREEN}🔶 Запуск Back (NestJS)...${NC}"
  cd Back
  docker compose up --build
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
