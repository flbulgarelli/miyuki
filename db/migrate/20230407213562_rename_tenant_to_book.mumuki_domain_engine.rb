# This migration comes from mumuki_domain_engine (originally 20160119040351)
class RenameTenantToBook < ActiveRecord::Migration[4.2]
  def change
    rename_table :tenants, :books
  end
end
