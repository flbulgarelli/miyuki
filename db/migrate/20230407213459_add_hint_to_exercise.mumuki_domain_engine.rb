# This migration comes from mumuki_domain_engine (originally 20150125051529)
class AddHintToExercise < ActiveRecord::Migration[4.2]
  def change
    add_column :exercises, :hint, :text
  end
end
