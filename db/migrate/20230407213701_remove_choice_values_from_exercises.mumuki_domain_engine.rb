# This migration comes from mumuki_domain_engine (originally 20191022180238)
class RemoveChoiceValuesFromExercises < ActiveRecord::Migration[5.1]
  def change
    remove_column :exercises, :choice_values, :string, null: false
  end
end
