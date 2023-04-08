# This migration comes from mumuki_domain_engine (originally 20150518185508)
class AddContentTypeToLanguage < ActiveRecord::Migration[4.2]
  def change
    add_column :languages, :output_content_type, :integer, default: 0
  end
end
