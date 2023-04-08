# This migration comes from mumuki_domain_engine (originally 20190326152631)
class AddSettingsToContent < ActiveRecord::Migration[5.1]
  def change
    add_column :exercises, :settings, :text
    add_column :guides, :settings, :text
  end
end
