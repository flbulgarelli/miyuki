FROM ruby:3.2.2-alpine AS builder

ENV RAILS_ENV=production
ENV RACK_ENV=production

RUN gem install bundler -v 2.4

RUN mkdir -p /var/www/miyuki
WORKDIR /var/www/miyuki

COPY Gemfile* /var/www/miyuki/

RUN apk add --no-cache make gcc g++ musl-dev sqlite-dev tzdata git ruby-dev

RUN bundle config build.sqlite3 --use-system-libraries \
    && bundle config set force_ruby_platform true \
    && bundle config set without development test \
    && bundle install --jobs=8 \
    && bundle clean --force 

FROM ruby:3.2.2-alpine

ENV RAILS_ENV=production
ENV RACK_ENV=production

WORKDIR /var/www/miyuki

COPY --from=builder /var/www/miyuki .
COPY --from=builder /usr/local/bundle /usr/local/bundle

RUN apk add --no-cache \
    sqlite \
    tzdata

COPY app/ /var/www/miyuki/app/
COPY config/ /var/www/miyuki/config/
COPY lib /var/www/miyuki/lib/
COPY public /var/www/miyuki/public/
COPY vendor /var/www/miyuki/vendor/
COPY config.ru Rakefile /var/www/miyuki/

ENV SECRET_KEY_BASE="PLEASECHANGEME"
RUN bundle exec rake assets:precompile

## Copy database and shell scripts

COPY bin/ /var/www/miyuki/bin/
COPY db/ /var/www/miyuki/db/

ENV RAILS_LOG_TO_STDOUT=true
ENV RAILS_SERVE_STATIC_FILES=true

RUN cp -r $(bundle show mumuki-styles)/app/assets/fonts/* /var/www/miyuki/public/assets

EXPOSE 3000

CMD rm -f /var/www/miyuki/tmp/pids/server.pid && exec rails s