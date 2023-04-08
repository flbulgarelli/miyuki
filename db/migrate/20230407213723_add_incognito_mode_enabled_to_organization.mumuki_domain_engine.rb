# This migration comes from mumuki_domain_engine (originally 20200804191643)
class AddIncognitoModeEnabledToOrganization < ActiveRecord::Migration[5.1]
  def change
    add_column :organizations, :incognito_mode_enabled, :boolean
  end
end
