# This migration comes from mumuki_domain_engine (originally 20150826023757)
class AddSlugToGuides < ActiveRecord::Migration[4.2]
  def change
    add_column :guides, :slug, :string
    add_index :guides, :slug, unique: true
  end
end
