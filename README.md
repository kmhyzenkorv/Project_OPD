# 🧩 Fullstack Project — Svelte + NestJS

Моно-репозиторий, объединяющий клиентскую часть на **Svelte** и сервер на **NestJS**.

---

## 📁 Структура проекта

```
fullstack-project/
├── Front/         # Svelte (Vite)
├── Back/          # NestJS
├── start.sh          # Bash-скрипт для Linux/macOS
├── start.cmd         # Скрипт для Windows
└── README.md         # Этот файл
```

---

## 🚀 Быстрый старт

### ✅ Требования

-   Node.js ≥ 18
-   npm или pnpm
-   Git
-   Docker (docker compose)

---

## 🪟 Windows

```bash
# Запуск в двух отдельных окнах
./start.cmd
```

---

## 🐧 Linux

```bash
# Сделать скрипт исполняемым и запустить
chmod +x start.sh
./start.sh
```

> При нажатии Ctrl+C оба процесса будут завершены автоматически

---

## 🔁 Ручной запуск (если не используешь скрипты)

```bash
# Терминал 1 — Frontend
cd Front
npm install
npm run dev

# Терминал 2 — Backend
cd Back
docker compose up --build
```

---

## 🌍 Доступ по умолчанию

| Компонент | URL                   |
| --------- | --------------------- |
| Фронтенд  | http://localhost:5173 |
| Бэкенд    | http://localhost:3000 |

---

## 📦 Используемые технологии

-   **Frontend**: [Svelte](https://svelte.dev/), [Vite](https://vitejs.dev/)
-   **Backend**: [NestJS](https://nestjs.com/), [TypeScript](https://www.typescriptlang.org/)

---

## 🛠 Полезные команды

```bash
# Линтинг / автоформат (если настроено)
npm run lint
npm run format

# Очистка зависимостей
rm -rf frontend/node_modules backend/node_modules
rm frontend/package-lock.json backend/package-lock.json
```

---

## 📝 Лицензия

MIT
