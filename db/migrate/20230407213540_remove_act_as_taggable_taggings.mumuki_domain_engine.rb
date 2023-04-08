# This migration comes from mumuki_domain_engine (originally 20151108182857)
class RemoveActAsTaggableTaggings < ActiveRecord::Migration[4.2]
  def change
    drop_table :tags
    drop_table :taggings
  end
end
