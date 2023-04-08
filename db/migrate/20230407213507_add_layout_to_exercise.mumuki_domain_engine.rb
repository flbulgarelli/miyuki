# This migration comes from mumuki_domain_engine (originally 20150620181839)
class AddLayoutToExercise < ActiveRecord::Migration[4.2]
  def change
    add_column :exercises, :layout, :integer, default: 0, null: false
  end
end
