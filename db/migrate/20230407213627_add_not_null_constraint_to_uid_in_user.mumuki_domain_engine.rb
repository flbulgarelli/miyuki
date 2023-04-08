# This migration comes from mumuki_domain_engine (originally 20161230055953)
class AddNotNullConstraintToUidInUser < ActiveRecord::Migration[4.2]
  def change
    change_column :users, :uid, :string, null: false
  end
end
