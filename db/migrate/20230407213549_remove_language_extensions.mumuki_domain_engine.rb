# This migration comes from mumuki_domain_engine (originally 20151210204646)
class RemoveLanguageExtensions < ActiveRecord::Migration[4.2]
  def change
    remove_column :languages, :extension
    remove_column :languages, :test_extension
  end
end
