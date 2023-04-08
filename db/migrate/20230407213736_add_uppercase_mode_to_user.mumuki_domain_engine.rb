# This migration comes from mumuki_domain_engine (originally 20210111125810)
class AddUppercaseModeToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :uppercase_mode, :boolean
  end
end
