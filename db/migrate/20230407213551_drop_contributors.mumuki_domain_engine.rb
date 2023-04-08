# This migration comes from mumuki_domain_engine (originally 20151211033000)
class DropContributors < ActiveRecord::Migration[4.2]
  def change
    drop_table :contributors
  end
end
