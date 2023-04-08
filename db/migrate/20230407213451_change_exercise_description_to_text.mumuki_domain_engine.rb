# This migration comes from mumuki_domain_engine (originally 20141228151351)
class ChangeExerciseDescriptionToText < ActiveRecord::Migration[4.2]
  def change
    change_column :exercises, :description, :text
  end
end
