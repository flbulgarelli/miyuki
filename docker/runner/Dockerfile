FROM ruby:3.2.2-bullseye
MAINTAINER Franco Leonardo Bulgarelli

ENV RACK_ENV production

RUN gem install bundler -v 2.4.7

RUN mkdir -p /var/www/runner/lib
WORKDIR /var/www/runner

COPY Gemfile* /var/www/runner/
COPY *.gemspec /var/www/runner/
COPY lib/version.rb /var/www/runner/lib/

RUN bundle install --without development test

COPY lib /var/www/runner/lib/
COPY config.ru /var/www/runner
COPY config/ /var/www/runner/config/
COPY pull_worker.rb /var/www/runner/

ENV DOCKER_HOST 'tcp://miyuki-dind:2375'