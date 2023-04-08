# This migration comes from mumuki_domain_engine (originally 20150315072037)
class AddDescriptionToGuide < ActiveRecord::Migration[4.2]
  def change
    add_column :guides, :description, :string
    add_index :guides, :name, unique: true
  end
end
