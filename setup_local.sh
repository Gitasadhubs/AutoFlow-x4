#!/bin/bash

# AutoFlow Local Demo Setup Script
# This script sets up a complete local environment for AutoFlow demo

set -e

echo "🚀 Starting AutoFlow Local Demo Setup..."

# Step 1: Configure .env for local PostgreSQL + Redis + Laravel app
if [ ! -f .env ]; then
    echo "📝 Creating .env file from template..."
    cp .env.development.example .env 2>/dev/null || cp .ENV .env

    # Update .env with local Docker container settings
    sed -i 's/DB_HOST=.*/DB_HOST=postgres/' .env
    sed -i 's/DB_PORT=.*/DB_PORT=5432/' .env
    sed -i 's/DB_DATABASE=.*/DB_DATABASE=coolify/' .env
    sed -i 's/DB_USERNAME=.*/DB_USERNAME=coolify/' .env
    sed -i 's/DB_PASSWORD=.*/DB_PASSWORD=password/' .env

    sed -i 's/REDIS_HOST=.*/REDIS_HOST=redis/' .env
    sed -i 's/REDIS_PORT=.*/REDIS_PORT=6379/' .env

    sed -i 's/APP_NAME=.*/APP_NAME=AutoFlow/' .env
    sed -i 's|APP_URL=.*|APP_URL=http://localhost:8000|' .env

    # Set Pusher/Soketi settings for local
    sed -i 's/PUSHER_HOST=.*/PUSHER_HOST=localhost/' .env
    sed -i 's/PUSHER_PORT=.*/PUSHER_PORT=6001/' .env
    sed -i 's/PUSHER_SCHEME=.*/PUSHER_SCHEME=http/' .env
    sed -i 's/PUSHER_APP_ID=.*/PUSHER_APP_ID=coolify/' .env
    sed -i 's/PUSHER_APP_KEY=.*/PUSHER_APP_KEY=coolify/' .env
    sed -i 's/PUSHER_APP_SECRET=.*/PUSHER_APP_SECRET=coolify/' .env

    # Set other required vars
    echo "APP_PORT=8000" >> .env
    echo "FORWARD_DB_PORT=5432" >> .env
    echo "FORWARD_REDIS_PORT=6379" >> .env
    echo "FORWARD_SOKETI_PORT=6001" >> .env
    echo "VITE_HOST=localhost" >> .env
    echo "VITE_PORT=5173" >> .env
    echo "FORWARD_MAILPIT_PORT=1025" >> .env
    echo "FORWARD_MAILPIT_DASHBOARD_PORT=8025" >> .env
    echo "FORWARD_MINIO_PORT=9000" >> .env
    echo "FORWARD_MINIO_PORT_CONSOLE=9001" >> .env
    echo "MINIO_ACCESS_KEY=minioadmin" >> .env
    echo "MINIO_SECRET_KEY=minioadmin" >> .env

    echo "✅ .env configured for local development"
else
    echo "ℹ️  .env file already exists, skipping configuration"
fi

# Step 2: Build and start all Docker containers
echo "🐳 Building and starting Docker containers..."
docker-compose -f docker-compose.yml up -d --build

# Wait for containers to be healthy
echo "⏳ Waiting for services to start..."
sleep 30

# Step 3: Install Laravel dependencies
echo "📦 Installing Laravel dependencies..."
docker exec autoflow composer install --no-interaction

# Step 4: Run database migrations
echo "🗄️  Running database migrations..."
docker exec autoflow php artisan migrate --force

# Step 5: Open AutoFlow frontend in default browser
echo "🌐 Opening AutoFlow in browser..."
xdg-open http://localhost:8000 &

echo "🎉 AutoFlow local demo setup complete!"
echo ""
echo "📋 Services running:"
echo "   - AutoFlow: http://localhost:8000"
echo "   - PostgreSQL: localhost:5432"
echo "   - Redis: localhost:6379"
echo "   - Soketi (WebSocket): localhost:6001"
echo "   - Vite (Dev Server): localhost:5173"
echo "   - Mailpit: localhost:8025"
echo "   - MinIO: localhost:9000"
echo ""
echo "🔐 Default login:"
echo "   Email: test@example.com"
echo "   Password: password"
echo ""
echo "🛑 To stop all services: docker-compose -f docker-compose.yml down"
