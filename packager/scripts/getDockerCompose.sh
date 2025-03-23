echo "Getting docker-compose files..."

DIR="../docker"

if [ ! -d "$DIR" ]; then
  mkdir "$DIR"
fi

cp ../../docker/docker-compose.yml "$DIR" || { echo "Failed to copy docker-compose.yml"; exit 1; }

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <distribution-name>"
  exit 1
fi

DISTRIBUTION_NAME=$1
cp ../../dists/$DISTRIBUTION_NAME/docker-compose.yml "$DIR/docker-compose-$DISTRIBUTION_NAME.yml" || { echo "Failed to copy docker-compose-$DISTRIBUTION_NAME.yml"; exit 1; }

echo "Getting database..."

DB_FILE_ID="1ecb0zk7EDY-71P_H-2lvX26DrsWGLOrj"
wget -O "$DIR/development.sqlite3" "https://drive.google.com/uc?export=download&id=$DB_FILE_ID" || { echo "Failed to download development.sqlite3"; exit 1; }





