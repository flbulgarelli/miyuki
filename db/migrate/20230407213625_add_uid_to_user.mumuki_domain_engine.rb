# This migration comes from mumuki_domain_engine (originally 20161222182724)
class AddUidToUser < ActiveRecord::Migration[4.2]
  def change
    add_column :users, :uid, :string
  end
end
