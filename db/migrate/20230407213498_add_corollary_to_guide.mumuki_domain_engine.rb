# This migration comes from mumuki_domain_engine (originally 20150529135324)
class AddCorollaryToGuide < ActiveRecord::Migration[4.2]
  def change
    add_column :guides, :corollary, :text
  end
end
