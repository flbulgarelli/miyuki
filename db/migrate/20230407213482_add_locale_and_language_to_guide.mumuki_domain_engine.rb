# This migration comes from mumuki_domain_engine (originally 20150418055334)
class AddLocaleAndLanguageToGuide < ActiveRecord::Migration[4.2]
  def change
    add_column :guides, :locale, :string, index: true
    add_column :guides, :language_id, :integer, index: true
  end
end
