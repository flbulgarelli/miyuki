# This migration comes from mumuki_domain_engine (originally 20190123180139)
class AddSourcesSection < ActiveRecord::Migration[5.1]
  def change
    add_column :guides, :sources, :text
  end
end
