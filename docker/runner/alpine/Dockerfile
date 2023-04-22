FROM ruby:3.2.2-alpine as build

RUN apk update && apk upgrade && \
    apk add --no-cache build-base && \
    gem update --system && gem install bundler -v 2.4.7

RUN mkdir -p /var/www/runner/lib
WORKDIR /var/www/runner

RUN bundle config path 'vendor/bundle' --local
RUN bundle config set --local without 'development test'

COPY Gemfile* /var/www/runner/
COPY *.gemspec /var/www/runner/
COPY lib/version*.rb /var/www/runner/lib/

RUN bundle install

FROM ruby:3.2.2-alpine
MAINTAINER Franco Leonardo Bulgarelli

WORKDIR /var/www/runner

RUN mkdir -p /var/www/

COPY --from=build /var/www/runner /var/www/runner

RUN bundle config path 'vendor/bundle' --local
RUN bundle config set --local without 'development test'

COPY lib /var/www/runner/lib/
COPY config.ru /var/www/runner
COPY pull_worker.rb /var/www/runner/

ENV DOCKER_HOST 'tcp://miyuki-dind:2375'