# This migration comes from mumuki_domain_engine (originally 20150407225356)
class AddUniqueIndexToUsers < ActiveRecord::Migration[4.2]
  def change
    add_index :users, :name, unique: true
  end
end
