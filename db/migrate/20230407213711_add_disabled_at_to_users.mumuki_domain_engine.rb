# This migration comes from mumuki_domain_engine (originally 20200527180729)
class AddDisabledAtToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :disabled_at, :datetime
    add_index :users, :disabled_at
  end
end
