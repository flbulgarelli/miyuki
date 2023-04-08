# This migration comes from mumuki_domain_engine (originally 20150603003459)
class RemoveLanguageExtensionUniq < ActiveRecord::Migration[4.2]
  def change
    remove_index :languages, :extension
    add_index :languages, :extension
  end
end
