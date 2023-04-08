# This migration comes from mumuki_domain_engine (originally 20141225034553)
class RenameExerciseRepoToGuide < ActiveRecord::Migration[4.2]
  def change
    rename_table :exercise_repos, :guides
    rename_column :exercises, :origin_id, :guide_id
  end
end
