echo "Getting docker-compose files..."

DIR="docker"

# Load environment variables from .env file
if [ -f .env ]; then
  export $(cat .env | xargs)
else
  echo ".env file not found"
  exit 1
fi

if [ -z "$DIST_NAME" ]; then
  echo "DIST_NAME is not set in .env file"
  exit 1
fi

if [ ! -d "$DIR" ]; then
  mkdir "$DIR"
fi

cp ../docker/docker-compose.yml "$DIR" || { echo "Failed to copy docker-compose.yml"; exit 1; }

cp ../dists/$DIST_NAME/docker-compose.yml "$DIR/docker-compose.$DIST_NAME.yml" || { echo "Failed to copy docker-compose.$DIST_NAME.yml"; exit 1; }

echo "Getting database..."

DB_DIR="$DIR/development.sqlite3"
DB_FILE_ID="1ecb0zk7EDY-71P_H-2lvX26DrsWGLOrj"
if [ ! -f "$DB_DIR" ]; then
  curl -L -o "$DB_DIR" "https://drive.google.com/uc?export=download&id=$DB_FILE_ID" || { echo "Failed to download development.sqlite3"; exit 1; }
else
  echo "development.sqlite3 already exists, skipping download"
fi





