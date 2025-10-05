# Monty-Play a React + Vite Project

This project is a React application built with Vite. It can be run either inside a Docker container for a consistent environment or natively on your machine using Node.js.

---

## Prerequisites

- [Node.js](https://nodejs.org/) >= 18 (for local development)
- [Docker](https://www.docker.com/) (for containerized setup)

---

## Running with Docker

1. **Build the Docker image:**

```bash
docker build -t react-vite-app .
```

2. **Run the container:**

```bash
docker run -it -p 5173:5173 react-vite-app
```

3. **Open the app in your browser:**

[http://localhost:5173](http://localhost:5173)

> The app runs in a consistent, isolated environment with all dependencies included.

---

## Running Locally with React + Vite

1. **Install dependencies:**

```bash
npm install
```

2. **Start the development server:**

```bash
npm run dev
```

3. **Open the app in your browser:**

[http://localhost:5173](http://localhost:5173)

> This method requires Node.js installed locally and uses your local environment.

---

## Notes

- Docker ensures the same environment for all developers and simplifies deployment.
- Local setup is faster for iterative development but depends on your local Node.js version.
- For production, you can build a static version using `npm run build` and serve it with any static server or container.

