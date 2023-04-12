FROM ruby:3.2.2-bullseye
MAINTAINER Franco Leonardo Bulgarelli

ENV RAILS_ENV production
ENV RACK_ENV production

# RUN apt-get update && \
#     apt-get install -y --force-yes --no-install-recommends git cron libpq5=10.* libpq-dev=10.* && \
#     rm -rf /var/lib/apt/lists/*

RUN gem install bundler -v 2.4

RUN mkdir -p /var/www/miyuki
WORKDIR /var/www/miyuki

COPY Gemfile* /var/www/miyuki/
RUN bundle install --without development test

COPY app/ /var/www/miyuki/app/
COPY config/ /var/www/miyuki/config/
COPY lib /var/www/miyuki/lib/
COPY public /var/www/miyuki/public/
COPY vendor /var/www/miyuki/vendor/
COPY config.ru Rakefile /var/www/miyuki/

RUN bundle exec rake assets:precompile

## Copy database and shell scripts

COPY bin/ /var/www/miyuki/bin/
COPY db/ /var/www/miyuki/db/

ENV RAILS_LOG_TO_STDOUT true

CMD ["rails", "s"]

EXPOSE 3000
