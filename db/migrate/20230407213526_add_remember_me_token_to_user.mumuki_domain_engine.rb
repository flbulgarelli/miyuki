# This migration comes from mumuki_domain_engine (originally 20150828013106)
class AddRememberMeTokenToUser < ActiveRecord::Migration[4.2]
  def change
    add_column :users, :remember_me_token, :string
  end
end
