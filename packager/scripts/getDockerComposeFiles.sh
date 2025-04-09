echo "Getting docker-compose files..."

DIR="docker"

if [ -z "$DIST_NAME" ]; then
  echo "DIST_NAME is not set, use DIST_NAME=<dist> npm run make"
  exit 1
fi

ENV_PATH="../dists/$DIST_NAME/.env"

if [ -f "$ENV_PATH" ]; then
  export $(cat "$ENV_PATH" | xargs)
  echo "$DIST_NAME will be packed"
else
  echo ".env file not found for distribution '$DIST_NAME' at $ENV_PATH"
  exit 1
fi

if [ ! -d "$DIR" ]; then
  mkdir "$DIR"
fi

cp ../docker/docker-compose.yml "$DIR" || { echo "Failed to copy docker-compose.yml"; exit 1; }

cp ../dists/$DIST_NAME/docker-compose.yml "$DIR/docker-compose.$DIST_NAME.yml" || { echo "Failed to copy docker-compose.$DIST_NAME.yml"; exit 1; }

echo "Getting database..."

DB_DIR="$DIR/development.sqlite3"
if [ ! -f "$DB_DIR" ]; then
  curl -L -o "$DB_DIR" "https://drive.google.com/uc?export=download&id=$DB_FILE_ID" || { echo "Failed to download development.sqlite3"; exit 1; }
else
  echo "development.sqlite3 already exists, skipping download"
fi