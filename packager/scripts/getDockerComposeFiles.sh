#!/bin/bash

set -e

echo "Getting docker-compose files..."

DIR="docker"

if [ ! -d "$DIR" ]; then
  mkdir "$DIR"
fi

cp ../docker/docker-compose.yml "$DIR" || { echo "Failed to copy docker-compose.yml"; exit 1; }

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <distribution-name>"
  exit 1
fi

DISTRIBUTION_NAME=$1
cp ../dists/$DISTRIBUTION_NAME/docker-compose.yml "$DIR/docker-compose.$DISTRIBUTION_NAME.yml" || { echo "Failed to copy docker-compose.$DISTRIBUTION_NAME.yml"; exit 1; }

echo "Getting database..."

DB_DIR="$DIR/development.sqlite3"
DB_FILE_ID="1ecb0zk7EDY-71P_H-2lvX26DrsWGLOrj"
if [ ! -f "$DB_DIR" ]; then
  wget -O "$DB_DIR" "https://drive.google.com/uc?export=download&id=$DB_FILE_ID" || { echo "Failed to download development.sqlite3"; exit 1; }
else
  echo "development.sqlite3 already exists, skipping download"
fi





