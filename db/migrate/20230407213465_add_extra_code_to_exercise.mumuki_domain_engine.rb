# This migration comes from mumuki_domain_engine (originally 20150321150030)
class AddExtraCodeToExercise < ActiveRecord::Migration[4.2]
  def change
    add_column :exercises, :extra_code, :text
  end
end
