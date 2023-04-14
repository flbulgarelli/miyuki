source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.2"

gem 'mumukit-core', '~> 1.20'
gem 'mumuki-domain', github: 'mumuki/mumuki-domain', branch: 'chore-update-ruby-version'
gem 'mumukit-bridge', '~> 4.3'
gem 'mumuki-styles', '~> 3.1'
gem 'muvment', '~> 1.4'


gem 'font_awesome5_rails', '~> 1.3'

gem 'faraday', '~> 2.3'
gem 'faraday-retry', '~> 2.0'

gem 'redcarpet', '~> 3.6'

gem 'momentjs-rails', '~> 2.10'
gem 'nprogress-rails', '~> 0.2'

gem "rails", "~> 7.0.4", ">= 7.0.4.3"

gem "sprockets-rails"

# Use sqlite3 as the database for Active Record
gem "sqlite3", "~> 1.4"

gem "puma", "~> 5.0"

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails"

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

gem "bootsnap", require: false

gem 'sassc-rails'

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "web-console"

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end
