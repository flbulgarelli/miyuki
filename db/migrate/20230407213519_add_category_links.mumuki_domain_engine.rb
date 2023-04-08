# This migration comes from mumuki_domain_engine (originally 20150724062233)
class AddCategoryLinks < ActiveRecord::Migration[4.2]
  def change
    add_column :categories, :links, :text
  end
end
