# This migration comes from mumuki_domain_engine (originally 20150415234515)
class CreateRelationships < ActiveRecord::Migration[4.2]
  def change
    create_table :relationships do |t|
      t.integer :follower_id
      t.integer :followed_id

      t.timestamps
    end
  end
end
