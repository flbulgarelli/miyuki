# This migration comes from mumuki_domain_engine (originally 20150517074730)
class AddExtraCodeToGuide < ActiveRecord::Migration[4.2]
  def change
    add_column :guides, :extra_code, :text
  end
end
