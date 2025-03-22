#!/bin/bash
set -e

if [[ $# -ne 2 || -z "$1" || -z "$2" ]]; then
  echo "Bad usage: "
  echo "          bin/build_runner.sh <runner> <base>"
  echo
  echo "Example: "
  echo "          bin/build_runner.sh haskell slim"
  echo "          bin/build_runner.sh text alpine"
  exit 1
fi

RUNNER=$1
BASE=$2
CLONE_PATH=/tmp/miyuki-$1-runner
REPO=mumuki/mumuki-$1-runner

if [[ -d $CLONE_PATH ]]; then
  echo "Updating $REPO checkout in $CLONE_PATH..."
  pushd "$CLONE_PATH"
  git stash
  git pull
  popd
else
  echo "Cloning $REPO into $CLONE_PATH..."
  git clone "https://github.com/$REPO" "$CLONE_PATH"
fi


cp "docker/runner/$BASE/Dockerfile" "$CLONE_PATH"
cp docker/runner/pull_worker.rb "$CLONE_PATH"

pushd "$CLONE_PATH"

docker build . -t flbulgarelli/miyuki-$1-runner

popd
