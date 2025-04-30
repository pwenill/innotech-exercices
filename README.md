# Innotech Exercices - Full Stack Application

## Overview

This project is a full-stack application built with Next.JS, Express.JS, PostgreSQL, MongoDB. This README provides instructions on setting up the development environment, running the application, and contributing to the project.

## Prerequisites

- [Node.js](https://nodejs.org/en/)
- [Docker & Docker Compose](https://www.docker.com/)
- [npm](https://www.npmjs.com/) ou [yarn](https://yarnpkg.com/)

## Project Structure

The project is organized as follows:

1. **Frontend**

- `/frontend` - Folder containing all the frontend code (Next.js)
- `/frontend/src` - Contains all public frontend assets images ( .png, .svg, .jpg )

2. **Backend**

- `/backend` - Folder containing all the source code for the backend (Express.js)
- `/backend/dist` - Production files for Express.js

## Setting up the Development Environment

1. **Clone the repository:**

   ```bash
   git clone https://github.com/pwenill/innotech-exercices.git
   cd innotech-exercices
   ```

2. Install Node.js and npm: Ensure you have Node.js and npm installed on your system. You can download them from https://nodejs.org/ .

3. **Install dependencies:**
   ```bash
   cd frontend
   npm install  # or yarn install
   cd ../backend
   npm install  # or yarn install
   ```
   or install automatically with this command
   ```bash
   ./install.sh
   ```

## Running the Application

1. **Start the Docker containers:**

   ```bash
   docker-compose up --build
   ```

   This command will build and start the necessary Docker containers (database, backend, frontend). The --build flag ensures that the images are rebuilt if there are any changes to the Dockerfiles.

1. **Access the application:**

   Once the containers are running, you can access the application in your browser at http://localhost:3000 ( frontend ), http://localhost:4000 ( backend ).

## Environments

- Backend

  ```bash
  MONGODB=( url mongodb database )
  ```

- General

  ```bash
  POSTGRES_USER=user
  POSTGRES_PASSWORD=password
  POSTGRES_DB=database

  MONGO_INITDB_DATABASE=database_mongodb
  ```

## Version Control System - Basic Procedures (Using Git)

This guide outlines the fundamental steps for using **Git**, the most widely adopted distributed version control system. Git helps developers track changes, collaborate on code, and manage project history efficiently.

---

### Version Control (Git)

This project uses Git for version control. Here are some basic commands:

- Clone the repository: (already covered above)
- Create a new branch: `git checkout -b feature/your-feature-name`
- Stage changes: `git add .`
- Commit changes: `git commit -m "Your commit message"`
- Push changes: `git push origin feature/feature-1`
- Create a pull request: After pushing your branch, create a pull request on - GitHub to merge your changes into the main branch.

## Dependencies

- **Node.js:** v22.14.0
- **npm:** v11.3.0
- **Docker:** v28.0.4
- **Docker Compose:** v2.34.0-desktop.1
- **PostgreSQL:** (Used as the database - version managed by Docker)
- **MongoDB:** (Used as the database - version managed by Docker)
- **Frontend:**
  - React: v19.0.0
  - React DOM: v19.0.0
  - Next.JS: v15.3.1
  - TailwindCSS: v4
  - EsLint: v9
  - Typescript: v5
- **Backend:**
  - Express: v5.1.0
  - Mongoose: v8.14.1
  - Nodemon: v3.1.10
  - Dotenv: v16.5.0
