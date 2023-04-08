# This migration comes from mumuki_domain_engine (originally 20160506182333)
class RemoveAdminComments < ActiveRecord::Migration[4.2]
  def change
    drop_table :active_admin_comments
  end
end
