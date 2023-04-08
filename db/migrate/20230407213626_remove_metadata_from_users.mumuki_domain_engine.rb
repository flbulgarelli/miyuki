# This migration comes from mumuki_domain_engine (originally 20161226181932)
class RemoveMetadataFromUsers < ActiveRecord::Migration[4.2]
  def change
    remove_column :users, :metadata
  end
end
