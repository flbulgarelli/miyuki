# This migration comes from mumuki_domain_engine (originally 20150406020152)
class AddLastSubmissionDateToUser < ActiveRecord::Migration[4.2]
  def change
    add_column :users, :last_submission_date, :datetime
  end
end
