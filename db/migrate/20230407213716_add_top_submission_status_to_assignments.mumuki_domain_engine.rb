# This migration comes from mumuki_domain_engine (originally 20200617142217)
class AddTopSubmissionStatusToAssignments < ActiveRecord::Migration[5.1]
  def change
    add_column :assignments, :top_submission_status, :integer
  end
end
