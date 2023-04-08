# This migration comes from mumuki_domain_engine (originally 20170207154702)
class AddIndexToUid < ActiveRecord::Migration[4.2]
  def change
    add_index :users, :uid, unique: true
  end
end
