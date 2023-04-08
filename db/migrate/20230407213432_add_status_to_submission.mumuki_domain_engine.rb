# This migration comes from mumuki_domain_engine (originally 20141121001134)
class AddStatusToSubmission < ActiveRecord::Migration[4.2]
  def change
    add_column :submissions, :status, :integer, default: 0
  end
end
