# This migration comes from mumuki_domain_engine (originally 20150125042217)
class AddTestSyntaxHintToLanguage < ActiveRecord::Migration[4.2]
  def change
    add_column :languages, :test_syntax_hint, :text
  end
end
