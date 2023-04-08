# This migration comes from mumuki_domain_engine (originally 20170612173212)
class AddFirstNameAndLastNameToUser < ActiveRecord::Migration[4.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
  end
end
