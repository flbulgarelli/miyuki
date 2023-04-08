# This migration comes from mumuki_domain_engine (originally 20160430235331)
class RemoveChapterNameDescription < ActiveRecord::Migration[4.2]
  def change
    remove_column :chapters, :name
    remove_column :chapters, :description
  end
end
