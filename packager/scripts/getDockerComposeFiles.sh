echo "Getting docker-compose files..."

DIR="docker"

if [ -z "$MIYUKI_DIST" ]; then
  echo "MIYUKI_DIST is not set, use MIYUKI_DIST=<dist> npm run make"
  exit 1
fi

ENV_PATH="../dists/$MIYUKI_DIST/.env"

if [ -f "$ENV_PATH" ]; then
  export $(cat "$ENV_PATH" | tr -d '\r' | xargs)
  echo "$MIYUKI_DIST will be packed"
else
  echo ".env file not found for distribution '$MIYUKI_DIST' at $ENV_PATH"
  exit 1
fi

if [ ! -d "$DIR" ]; then
  mkdir "$DIR"
fi

cp ../docker/docker-compose.yml "$DIR" || { echo "Failed to copy docker-compose.yml"; exit 1; }

cp ../dists/$MIYUKI_DIST/docker-compose.yml "$DIR/docker-compose.$MIYUKI_DIST.yml" || { echo "Failed to copy docker-compose.$MIYUKI_DIST.yml"; exit 1; }

echo "Getting LICENSE..."

cp ../OBJECTIVES_AND_PRINCIPLES ./src/license/OBJECTIVES_AND_PRINCIPLES

echo "Getting database..."

DB_DIR="$DIR/development.sqlite3"
if [ ! -f "$DB_DIR" ]; then
  curl -L -o "$DB_DIR" "https://drive.google.com/uc?export=download&id=$DB_FILE_ID" || { echo "Failed to download development.sqlite3"; exit 1; }
else
  echo "development.sqlite3 already exists, skipping download"
fi