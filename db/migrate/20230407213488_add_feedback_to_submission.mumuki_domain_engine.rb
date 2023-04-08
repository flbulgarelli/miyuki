# This migration comes from mumuki_domain_engine (originally 20150512235847)
class AddFeedbackToSubmission < ActiveRecord::Migration[4.2]
  def change
    add_column :submissions, :feedback, :text
  end
end
