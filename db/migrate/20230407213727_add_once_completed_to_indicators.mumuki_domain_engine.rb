# This migration comes from mumuki_domain_engine (originally 20200915131621)
class AddOnceCompletedToIndicators < ActiveRecord::Migration[5.1]
  def change
    add_column :indicators, :once_completed, :boolean
  end
end
