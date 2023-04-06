class ApplicationController < ActionController::Base

  include DynamicErrorsController

  protect_from_forgery with: :exception

  before_action :set_current_organization!
  before_action :set_locale!
  before_action :set_time_zone!

  before_action :visit_organization!, if: :current_user?

  after_action :leave_organization!
  after_action :unset_time_zone!

  helper_method :current_workspace,
                :subject,
                :theme_stylesheet_url,
                :extension_javascript_url,
                :current_immersive_path,
                :current_access_mode,
                :current_user?,
                :current_incognito_user?,
                :current_logged_user?,
                :current_user

  add_flash_types :info

  def current_user?
    true
  end

  def current_user
    Mumuki::Domain::Incognito
  end

  def current_incognito_user?
    true
  end

  def current_logged_user?
    true
  end

  def incognito_mode_enabled?
    true
  end

  def set_current_organization!
    Organization.find_by!(name: organization_name).switch!
  rescue => e
    Organization.base.switch!
    raise e
  end

  def organization_name
    Mumukit::Platform.organization_name(request)
  end

  def visit_organization!
    current_user.visit!(Organization.current)
  end

  # redirects to the usage in the current organization for the given content
  # or raises a not found error if unused
  def redirect_to_usage(content)
    raise Mumuki::Domain::NotFoundError unless content.usage_in_organization.try { |usage| redirect_to usage }
  end

  def current_workspace
    Mumuki::Domain::Workspace.new(current_user, Organization.current)
  end


  private

  def inorganic_path_for(request)
    Mumukit::Platform.organization_mapping.inorganic_path_for(request)
  end

  def set_locale!
    I18n.locale = Organization.current.locale
  end

  def set_time_zone!
    Time.zone = Organization.current.time_zone
  end

  def unset_time_zone!
    Time.zone = nil
  end

  def subject #TODO may be used to remove breadcrumbs duplication
    nil
  end

  def leave_organization!
    Mumukit::Platform::Organization.leave!
  end

  def current_access_mode
    Organization.current.access_mode(current_user)
  end
end
