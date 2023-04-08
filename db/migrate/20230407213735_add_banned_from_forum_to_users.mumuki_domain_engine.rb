# This migration comes from mumuki_domain_engine (originally 20201130163114)
class AddBannedFromForumToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :banned_from_forum, :boolean
  end
end
