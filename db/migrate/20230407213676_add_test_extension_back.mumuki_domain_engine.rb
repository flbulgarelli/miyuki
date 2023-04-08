# This migration comes from mumuki_domain_engine (originally 20181016203853)
class AddTestExtensionBack < ActiveRecord::Migration[5.1]
  def change
    add_column :languages, :test_extension, :string
  end
end
