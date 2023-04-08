# This migration comes from mumuki_domain_engine (originally 20160701195105)
class AddLoginMethodsToOrganization < ActiveRecord::Migration[4.2]
  def change
    add_column :organizations, :login_methods, :string, null: false
  end
end
