# This migration comes from mumuki_domain_engine (originally 20160510183137)
class AddPrivateToOrganization < ActiveRecord::Migration[4.2]
  def change
    add_column :organizations, :private, :boolean, default: false
  end
end
