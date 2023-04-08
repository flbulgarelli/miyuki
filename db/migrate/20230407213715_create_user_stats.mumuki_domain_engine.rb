# This migration comes from mumuki_domain_engine (originally 20200616160640)
class CreateUserStats < ActiveRecord::Migration[5.1]
  def change
    create_table :user_stats do |t|
      t.integer :exp, default: 0

      t.references :user, index: true
      t.references :organization, index: true
    end
  end
end
