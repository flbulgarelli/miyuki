# This migration comes from mumuki_domain_engine (originally 20141221213109)
class CreateExerciseRepos < ActiveRecord::Migration[4.2]
  def change
    create_table :exercise_repos do |t|
      t.string :github_url
      t.string :name
      t.references :author, index: true

      t.timestamps
    end
  end
end
