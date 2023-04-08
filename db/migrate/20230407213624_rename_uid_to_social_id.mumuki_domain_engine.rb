# This migration comes from mumuki_domain_engine (originally 20161222182015)
class RenameUidToSocialId < ActiveRecord::Migration[4.2]
  def change
    rename_column :users, :uid, :social_id
  end
end
