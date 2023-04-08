# This migration comes from mumuki_domain_engine (originally 20151108183319)
class AddTagsArray < ActiveRecord::Migration[4.2]
  def change
    add_column :exercises, :tag_list, :text
  end
end
