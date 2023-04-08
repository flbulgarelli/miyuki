# This migration comes from mumuki_domain_engine (originally 20160430231035)
class RemoveChapterLesson < ActiveRecord::Migration[4.2]
  def change
    remove_column :lessons, :chapter_id
  end
end
