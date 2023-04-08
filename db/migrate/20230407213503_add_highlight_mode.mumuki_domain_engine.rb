# This migration comes from mumuki_domain_engine (originally 20150605065543)
class AddHighlightMode < ActiveRecord::Migration[4.2]
  def change
    add_column :languages, :highlight_mode, :string, null: true
  end
end
