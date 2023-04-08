# This migration comes from mumuki_domain_engine (originally 20160819181024)
class MakeOrganizationPrivateByDefault < ActiveRecord::Migration[4.2]
  def change
    change_column :organizations, :private, :boolean, default: true
  end
end
