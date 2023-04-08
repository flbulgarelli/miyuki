# This migration comes from mumuki_domain_engine (originally 20150519174628)
class RemoveLanguageNameUniq < ActiveRecord::Migration[4.2]
  def change
    remove_index :languages, :name
    add_index :languages, :name
  end
end
