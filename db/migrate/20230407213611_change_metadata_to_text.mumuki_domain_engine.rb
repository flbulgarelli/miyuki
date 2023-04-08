# This migration comes from mumuki_domain_engine (originally 20160617195350)
class ChangeMetadataToText < ActiveRecord::Migration[4.2]
  def change
    change_column :users, :metadata, :text, default: '{}', null: false
  end
end
