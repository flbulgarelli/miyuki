# This migration comes from mumuki_domain_engine (originally 20150708212022)
class AddPositionToCategory < ActiveRecord::Migration[4.2]
  def change
    add_column :categories, :position, :integer, default: 0, null: false
  end
end
