# This migration comes from mumuki_domain_engine (originally 20160705160244)
class AddManualEvaluationToExercise < ActiveRecord::Migration[4.2]
  def change
    add_column :exercises, :manual_evaluation, :boolean, default: false
  end
end
