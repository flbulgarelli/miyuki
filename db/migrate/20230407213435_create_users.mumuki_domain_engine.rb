# This migration comes from mumuki_domain_engine (originally 20141124023403)
class CreateUsers < ActiveRecord::Migration[4.2]
  def change
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :name
      t.string :token
      t.datetime :expires_at

      t.timestamps
    end
  end
end
