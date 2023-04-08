# This migration comes from mumuki_domain_engine (originally 20181114201620)
class AddTestTemplateToLanguages < ActiveRecord::Migration[5.1]
  def change
    add_column :languages, :test_template, :text
  end
end
