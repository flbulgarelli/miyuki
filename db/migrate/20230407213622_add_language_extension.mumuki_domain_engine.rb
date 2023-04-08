# This migration comes from mumuki_domain_engine (originally 20161018142147)
class AddLanguageExtension < ActiveRecord::Migration[4.2]
  def change
    add_column :languages, :extension, :string, default: '', null: false
  end
end
