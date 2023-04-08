# This migration comes from mumuki_domain_engine (originally 20171004134607)
class AddTriableToLanguage < ActiveRecord::Migration[4.2]
  def change
    add_column :languages, :triable, :boolean, default: false
  end
end
