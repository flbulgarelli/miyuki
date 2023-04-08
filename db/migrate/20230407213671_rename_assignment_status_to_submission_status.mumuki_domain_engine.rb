# This migration comes from mumuki_domain_engine (originally 20180704150839)
class RenameAssignmentStatusToSubmissionStatus < ActiveRecord::Migration[5.1]
  def change
    rename_column :assignments, :status, :submission_status
  end
end
