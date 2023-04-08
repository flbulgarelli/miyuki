# This migration comes from mumuki_domain_engine (originally 20150329163753)
class AddEmailToUser < ActiveRecord::Migration[4.2]
  def change
    add_column :users, :email, :string
  end
end
