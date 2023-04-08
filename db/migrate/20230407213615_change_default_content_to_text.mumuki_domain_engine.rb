# This migration comes from mumuki_domain_engine (originally 20160729194600)
class ChangeDefaultContentToText < ActiveRecord::Migration[4.2]
  def change
    change_column :exercises, :default_content, :text
  end
end
