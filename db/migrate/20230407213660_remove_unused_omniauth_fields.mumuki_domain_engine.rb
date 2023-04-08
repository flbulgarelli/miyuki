# This migration comes from mumuki_domain_engine (originally 20180323140943)
class RemoveUnusedOmniauthFields < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :token
    remove_column :users, :expires_at
    remove_column :users, :remember_me_token
  end
end
