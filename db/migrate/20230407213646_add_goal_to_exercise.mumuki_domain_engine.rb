# This migration comes from mumuki_domain_engine (originally 20171003204152)
class AddGoalToExercise < ActiveRecord::Migration[4.2]
  def change
    add_column :exercises, :goal, :text, default: nil
  end
end
