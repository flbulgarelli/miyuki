# This migration comes from mumuki_domain_engine (originally 20150708212836)
class ChangeCategoryDescriptionToText < ActiveRecord::Migration[4.2]
  def change
    change_column :categories, :description, :text
  end
end
