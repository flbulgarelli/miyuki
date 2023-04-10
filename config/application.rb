require_relative "boot"
require "rails/all"

require 'mumukit/core'
require 'sassc-rails'

I18n.load_translations_path File.join(__dir__, 'laboratory', 'locales', '*.yml')

require 'mumuki/domain'
require 'mumuki/styles'
require 'muvment'


Mumukit::Platform.configure do |config|
  config.application = Mumukit::Platform.laboratory
  config.web_framework = Mumukit::Platform::WebFramework::Rails
end

Bundler.require(*Rails.groups)

module Miyuki
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    config.i18n.available_locales = Mumukit::Platform::Locale.supported

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    config.sass.preferred_syntax = :sass
    config.active_record.yaml_column_permitted_classes = [ActiveSupport::HashWithIndifferentAccess, Symbol]
  end
end
