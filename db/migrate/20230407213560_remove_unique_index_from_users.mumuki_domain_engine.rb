# This migration comes from mumuki_domain_engine (originally 20160108215313)
class RemoveUniqueIndexFromUsers < ActiveRecord::Migration[4.2]
  def change
    remove_index :users, :name
  end
end
