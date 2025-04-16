FROM ruby:3.2.2-bullseye

ENV RAILS_ENV=production
ENV RACK_ENV=production

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

ENV SECRET_KEY_BASE="PLEASECHANGEME"
RUN bundle exec rake assets:precompile

## Copy database and shell scripts

COPY bin/ /var/www/miyuki/bin/
COPY db/ /var/www/miyuki/db/

ENV RAILS_LOG_TO_STDOUT=true
ENV RAILS_SERVE_STATIC_FILES=true

RUN cp -r $(bundle show mumuki-styles)/app/assets/fonts/* /var/www/miyuki/public/assets

CMD ["rails", "s"]

EXPOSE 3000
