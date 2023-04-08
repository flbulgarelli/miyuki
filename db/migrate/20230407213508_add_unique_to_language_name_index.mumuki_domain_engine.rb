# This migration comes from mumuki_domain_engine (originally 20150701030644)
class AddUniqueToLanguageNameIndex < ActiveRecord::Migration[4.2]
  def change
    remove_index :languages, :name
    add_index :languages, :name, unique: true
  end
end
