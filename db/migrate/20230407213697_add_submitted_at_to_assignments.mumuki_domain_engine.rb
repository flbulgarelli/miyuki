# This migration comes from mumuki_domain_engine (originally 20190905174934)
class AddSubmittedAtToAssignments < ActiveRecord::Migration[5.1]
  def change
    add_column :assignments, :submitted_at, :datetime
  end
end
