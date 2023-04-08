# This migration comes from mumuki_domain_engine (originally 20150724062215)
class AddLanguageDescription < ActiveRecord::Migration[4.2]
  def change
    add_column :languages, :description, :text
  end
end
