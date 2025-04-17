@echo off
chcp 65001 > nul
title Fullstack Project Launcher

echo Запуск Front (Svelte)...
start "Front" cmd /k "cd /d Front && npm install && npm run dev"

echo Запуск Back (NestJS)...
start "Back" cmd /k "cd /d Back && docker compose up --build"

echo.
echo ✅ Оба процесса запущены в отдельных окнах.
pause
