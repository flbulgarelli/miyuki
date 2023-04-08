# This migration comes from mumuki_domain_engine (originally 20160526182119)
class AddMetadataToUser < ActiveRecord::Migration[4.2]
  def change
    add_column :users, :metadata, :string, default: '{}', null: false
  end
end
