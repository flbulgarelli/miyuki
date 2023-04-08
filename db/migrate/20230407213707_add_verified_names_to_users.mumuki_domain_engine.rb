# This migration comes from mumuki_domain_engine (originally 20200213175736)
class AddVerifiedNamesToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :verified_first_name, :string
    add_column :users, :verified_last_name, :string
  end
end
