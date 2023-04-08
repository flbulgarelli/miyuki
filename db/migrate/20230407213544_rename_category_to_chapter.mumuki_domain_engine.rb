# This migration comes from mumuki_domain_engine (originally 20151208224907)
class RenameCategoryToChapter < ActiveRecord::Migration[4.2]
  def change
    rename_table :categories, :chapters
  end
end
