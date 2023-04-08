# This migration comes from mumuki_domain_engine (originally 20180611190239)
class AddRandomizationsToExercises < ActiveRecord::Migration[5.1]
  def change
    add_column :exercises, :randomizations, :text
  end
end
