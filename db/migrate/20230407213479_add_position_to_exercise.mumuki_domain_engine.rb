# This migration comes from mumuki_domain_engine (originally 20150415211341)
class AddPositionToExercise < ActiveRecord::Migration[4.2]
  def change
    add_column :exercises, :position, :integer
  end
end
