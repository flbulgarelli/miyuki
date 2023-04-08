# This migration comes from mumuki_domain_engine (originally 20141207235356)
class AddSubmissionsCountToExercise < ActiveRecord::Migration[4.2]
  def change
    add_column :exercises, :submissions_count, :integer, index: true
  end
end
