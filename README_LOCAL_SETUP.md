# AutoFlow Local Setup and Demo Instructions

This document provides instructions to set up AutoFlow locally for demo and FYP presentation purposes.

---

## Prerequisites

- Docker and Docker Compose installed on your machine.
- Git installed.
- Bash shell available.

---

## One-Command Local Setup

Run the provided setup script to configure environment, build containers, install dependencies, run migrations, and open the frontend:

```bash
./setup_local.sh
```

This script will:

1. Configure `.env` for local PostgreSQL, Redis, and Laravel app.
2. Build and start all Docker containers.
3. Install Laravel dependencies using Composer.
4. Run database migrations.
5. Open AutoFlow frontend in your default browser at [http://localhost:8000](http://localhost:8000).

---

## Verify Services

Ensure the following services are running:

- PostgreSQL on port 5432
- Redis on port 6379
- AutoFlow Laravel app on port 8000
- Soketi WebSocket server on port 6001
- Vite development server on port 5173
- Mailpit email testing on port 8025
- MinIO object storage on port 9000

You can check running containers with:

```bash
docker ps
```

---

## Troubleshooting

- If the Laravel container fails to start due to missing PHP extensions, ensure the Dockerfile or container installs `php-pcntl` and `php-zip`.
- If you encounter permission or ownership issues with the repository inside the container, run:

```bash
git config --global --add safe.directory /var/www/html
```

- If the Nginx container fails to start due to missing or incorrect `nginx.conf`, ensure the `nginx.conf` file exists in the project root and is correctly mounted.

---

## Stopping Services

To stop all running containers and clean up, run:

```bash
docker-compose down
```

---

## Additional Notes

- The frontend uses Blade, Livewire, and Alpine.js.
- Backend is Laravel 11 with PostgreSQL and Redis.
- Real-time features use Soketi WebSocket server.
- Use the `FYP_DEMO_CHECKLIST.md` for a step-by-step demo guide.

---

Thank you for using AutoFlow for your FYP demo!
