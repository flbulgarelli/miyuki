# This migration comes from mumuki_domain_engine (originally 20180323125804)
class RemoveUserName < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :name
  end
end
