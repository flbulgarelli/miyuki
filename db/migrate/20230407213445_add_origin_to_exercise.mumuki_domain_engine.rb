# This migration comes from mumuki_domain_engine (originally 20141221215035)
class AddOriginToExercise < ActiveRecord::Migration[4.2]
  def change
    add_reference :exercises, :origin, index: true
    add_column :exercises, :original_id, :integer, index: true
  end
end
