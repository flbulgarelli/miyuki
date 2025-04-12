# ❄️ Miyuki / みゆき

![Open Collective backers and sponsors](https://img.shields.io/opencollective/all/mumuki?color=%23ff5b81)

> Stateless, **mi**nimalistic mum**uki** laboratory

https://user-images.githubusercontent.com/677436/230702139-114d099f-8ab7-4d71-be12-f4f1d52388ec.mp4

## About

This is a fork of mumuki-laboratory that:

  * Freezes dependencies versions - miyuki is an [app, not an engine](https://guides.rubyonrails.org/engines.html)
  * Removes a lot of boilerplate and dark features
  * Updates ruby and rails to 3.2 and 7, respectively
  * Makes incognito mode work - current implementation had a lot of bugs and missing parts
  * Uses `Sqlite3` instead of `PostgreSQL`
  * Makes deployment easier

## Local installation

### Install environment

```bash
rbenv install
bundle install
```

## Start runners

> This will start just a single haskell runner, required for the `demo` distribution
> For more information about distributions, see below.

```bash
docker compose -f docker/docker-compose.yml \
               -f dists/demo/docker-compose.yml \
               up -d miyuki-haskell-worker-setup miyuki-dind miyuki-haskell-runner
```

## Create database

> This will setup a server using the `demo` distribution.
> For more information about distributions, see below.

```bash
rails db:create
rails db:schema:load
MIYUKI_DIST=demo rails db:seed --trace
```

### Start the server

```bash
rails s
```

## Docker Installation

### Prepare database

In order to prepare database, follow the same instructions that with local installation.

### Start the server from docker

Again, this will start miyuki server **only**:

```
docker run -it --rm \
           -p 3000:3000 \
           -v ./db/development.sqlite3:/var/www/miyuki/db/production.sqlite3 \
           flbulgarelli/miyuki-server
```

## Prebuilt distributions

You'll find different setup configuration for language runners and content under the `dist` directory. Go to any of the `dists/` directories and follow instructions.