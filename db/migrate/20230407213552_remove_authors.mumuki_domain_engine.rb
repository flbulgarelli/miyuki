# This migration comes from mumuki_domain_engine (originally 20151211034943)
class RemoveAuthors < ActiveRecord::Migration[4.2]
  def change
    remove_column :exercises, :author_id
    remove_column :guides, :author_id
  end
end
