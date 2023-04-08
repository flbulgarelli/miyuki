# This migration comes from mumuki_domain_engine (originally 20150724062249)
class AddCategoryLongDescription < ActiveRecord::Migration[4.2]
  def change
    add_column :categories, :long_description, :text
  end
end
