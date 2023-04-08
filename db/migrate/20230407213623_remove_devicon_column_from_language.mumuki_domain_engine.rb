# This migration comes from mumuki_domain_engine (originally 20161107171305)
class RemoveDeviconColumnFromLanguage < ActiveRecord::Migration[4.2]
  def change
    remove_column :languages, :devicon
  end
end
