# This migration comes from mumuki_domain_engine (originally 20141231191842)
class ChangeLanguageColumnType < ActiveRecord::Migration[4.2]
  def change
    rename_column :exercises, :language, :language_id
    add_index :exercises, :language_id
  end
end
