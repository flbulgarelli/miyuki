# This migration comes from mumuki_domain_engine (originally 20150829211550)
class AddQueriableToLanguage < ActiveRecord::Migration[4.2]
  def change
    add_column :languages, :queriable, :boolean, default: false
  end
end
