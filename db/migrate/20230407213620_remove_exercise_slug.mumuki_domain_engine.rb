# This migration comes from mumuki_domain_engine (originally 20160907010315)
class RemoveExerciseSlug < ActiveRecord::Migration[4.2]
  def change
    remove_column :exercises, :slug
  end
end
