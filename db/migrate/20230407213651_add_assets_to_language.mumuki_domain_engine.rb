# This migration comes from mumuki_domain_engine (originally 20171229042201)
class AddAssetsToLanguage < ActiveRecord::Migration[5.1]
  def change
    change_table :languages do |t|
      t.string :assets_js_urls
      t.string :assets_html_urls
      t.string :assets_css_urls
    end
  end
end
