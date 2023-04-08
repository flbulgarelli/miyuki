# This migration comes from mumuki_domain_engine (originally 20171109181818)
class AddManualEvaluationCommendAndSubmissionIdIndexInAssignment < ActiveRecord::Migration[4.2]
  def change
    add_column :assignments, :manual_evaluation_comment, :text, default: nil
    add_index :assignments, :submission_id
  end
end
