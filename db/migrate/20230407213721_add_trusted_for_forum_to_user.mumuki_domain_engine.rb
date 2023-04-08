# This migration comes from mumuki_domain_engine (originally 20200730221001)
class AddTrustedForForumToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :trusted_for_forum, :boolean
  end
end
