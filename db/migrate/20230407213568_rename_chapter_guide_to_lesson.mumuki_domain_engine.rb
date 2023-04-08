# This migration comes from mumuki_domain_engine (originally 20160222192958)
class RenameChapterGuideToLesson < ActiveRecord::Migration[4.2]
  def change
    rename_table :chapter_guides, :lessons
  end
end
