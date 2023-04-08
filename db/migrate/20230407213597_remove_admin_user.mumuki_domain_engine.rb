# This migration comes from mumuki_domain_engine (originally 20160506181152)
class RemoveAdminUser < ActiveRecord::Migration[4.2]
  def change
    drop_table :admin_users
  end
end
