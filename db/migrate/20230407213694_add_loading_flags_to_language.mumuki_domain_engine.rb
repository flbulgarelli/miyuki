# This migration comes from mumuki_domain_engine (originally 20190702003600)
class AddLoadingFlagsToLanguage < ActiveRecord::Migration[5.1]
  def change
    add_column :languages, :layout_shows_loading_content, :boolean
    add_column :languages, :editor_shows_loading_content, :boolean
  end
end
