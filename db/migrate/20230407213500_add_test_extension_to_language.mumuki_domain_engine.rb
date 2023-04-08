# This migration comes from mumuki_domain_engine (originally 20150531164450)
class AddTestExtensionToLanguage < ActiveRecord::Migration[4.2]
  def change
    add_column :languages, :test_extension, :string
  end
end
