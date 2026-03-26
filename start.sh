#!/bin/sh
# Ensure uploads dirs exist inside the persistent volume at /app/data
mkdir -p /app/data/uploads/files /app/data/uploads/covers
# Symlink /app/uploads → /app/data/uploads so the app finds its files
ln -sfn /app/data/uploads /app/uploads
exec node src/index.js
