# TCG Collector App

A web application for trading card game collectors to [manage their collection and track the value.]. Built as a full-stack portfolio project to demonstrate practical skills in React and modern web development.

## Features

- [ ] Browse and search cards via the Pokémon TCG API / Scryfall
- [ ] Track a personal card collection
- [ ] 
- [ ]
- [ ]

> Note: keep this section updated as you build. An honest, current feature list is more valuable to a reviewer than an ambitious one that doesn't match the code.

## Tech Stack

**Frontend**
- React (Vite)

**Backend**
- Python
- FastAPI

**Database**
- PostgreSQL (containerized via Docker)

**External Data**
- [Pokémon TCG API](https://pokemontcg.io/) / [Scryfall API](https://scryfall.com/docs/api)

**Deployment**
- Frontend: Vercel
- Backend: Render

## Getting Started

These instructions assume you have Git, Docker, and Python installed locally.

### 1. Clone the repository

```bash
git clone https://github.com/DoppelGengarUX/tcg-collector-app.git
cd tcg-collector-app
```

### 2. Start the database

```bash
docker compose up -d
```

### 3. Set up the backend

```bash
cd backend
python -m venv venv
source venv/bin/activate   # Windows: venv\Scripts\activate
pip install -r requirements.txt
uvicorn main:app --reload
```

The API will be available at `http://localhost:8000`.

### 4. Set up the frontend

```bash
cd frontend
npm install
npm run dev
```

The app will be available at `http://localhost:5173` (Vite's default).

## Project Structure

```
tcg-collector-app/
├── backend/          # FastAPI application
├── frontend/          # React + Vite application
├── docker-compose.yml # PostgreSQL container config
└── README.md
```

> Update this once your actual folder layout is finalized — this is a placeholder based on the planned structure.

## What I Learned

## License

