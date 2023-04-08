# This migration comes from mumuki_domain_engine (originally 20150518174912)
class AddLanguageOutputVisibilityFlag < ActiveRecord::Migration[4.2]
  def change
    add_column :languages, :visible_success_output, :boolean, default: false
  end
end
