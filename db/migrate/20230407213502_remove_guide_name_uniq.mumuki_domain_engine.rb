# This migration comes from mumuki_domain_engine (originally 20150603020457)
class RemoveGuideNameUniq < ActiveRecord::Migration[4.2]
  def change
    remove_index :guides, :name
    add_index :guides, :name
  end
end
