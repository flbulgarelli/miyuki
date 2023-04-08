# This migration comes from mumuki_domain_engine (originally 20181014233438)
class RemoveNonNullConstraintFromPermissions < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :permissions, :text, null: true, default: nil
  end
end
