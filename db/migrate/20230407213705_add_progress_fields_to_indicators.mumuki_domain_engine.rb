# This migration comes from mumuki_domain_engine (originally 20191217184525)
class AddProgressFieldsToIndicators < ActiveRecord::Migration[5.1]
  def change
    add_column :indicators, :children_passed_count, :integer
    add_column :indicators, :children_count, :integer
  end
end
