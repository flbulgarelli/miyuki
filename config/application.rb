require_relative "boot"
require "rails/all"

require 'mumukit/core'
require 'sassc-rails'

I18n.load_translations_path File.join(__dir__, 'laboratory', 'locales', '*.yml')

require 'mumuki/domain'


Mumukit::Platform.configure do |config|
  config.application = Mumukit::Platform.laboratory
  config.web_framework = Mumukit::Platform::WebFramework::Rails
end

# module Mumukit::Platform::OrganizationMapping::Path
#   class << self
#     alias_method :__organization_name__, :organization_name
#     def in_actual_organization?(request, domain = nil)
#       actual_organization_name(request, domain).present?
#     end

#     def actual_organization_name(request, domain)
#       name = __organization_name__(request, domain)
#       name unless %w(auth login logout).include? name
#     end

#     def organization_name(request, domain)
#       actual_organization_name(request, domain) || 'base'
#     end

#     patch :inorganic_path_for do |request, hyper|
#       if in_actual_organization?(request)
#         hyper.call(request)
#       else
#         path_for(request)
#       end
#     end
#   end
# end

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Minimuki
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
  end
end
