# This migration comes from mumuki_domain_engine (originally 20190724190355)
class AddSettingsToLanguages < ActiveRecord::Migration[5.1]
  def change
    add_column :languages, :settings, :boolean, default: false
  end
end
