#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails
rm -f /app/tmp/pids/server.pid

# Wait for database to be ready
echo "Waiting for MySQL to be ready..."
until nc -z -v -w30 db 3306; do
  echo "Waiting for database connection..."
  sleep 2
done
echo "Database is ready!"

# If the database exists, migrate. Otherwise, setup (create and migrate)
bundle exec rails db:migrate 2>/dev/null || bundle exec rails db:setup

# Seed the database
echo "Seeding database..."
bundle exec rails db:seed
echo "Database seeded!"

# Then exec the container's main process (what's set as CMD in the Dockerfile)
exec "$@" 