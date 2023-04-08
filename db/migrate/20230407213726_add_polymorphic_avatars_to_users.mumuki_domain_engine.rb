# This migration comes from mumuki_domain_engine (originally 20200915123020)
class AddPolymorphicAvatarsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :avatar_type, :string, default: 'Avatar'
    add_index :users, [:avatar_type, :avatar_id]
  end
end
