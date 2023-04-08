# This migration comes from mumuki_domain_engine (originally 20180117014110)
class AddCustomEditorAssetsToLanguage < ActiveRecord::Migration[5.1]
  def change
    rename_column :languages, :assets_js_urls, :layout_js_urls
    rename_column :languages, :assets_html_urls, :layout_css_urls
    rename_column :languages, :assets_css_urls, :layout_html_urls

    change_table :languages do |t|
      t.string :editor_js_urls
      t.string :editor_html_urls
      t.string :editor_css_urls
    end
  end
end
