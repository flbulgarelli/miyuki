# This migration comes from mumuki_domain_engine (originally 20151208231749)
class RenameChapterGuidePathToChapter < ActiveRecord::Migration[4.2]
  def change
    rename_column :chapter_guides, :path_id, :chapter_id
  end
end
