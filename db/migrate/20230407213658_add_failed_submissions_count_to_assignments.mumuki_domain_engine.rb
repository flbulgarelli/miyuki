# This migration comes from mumuki_domain_engine (originally 20180307150148)
class AddFailedSubmissionsCountToAssignments < ActiveRecord::Migration[5.1]
  def change
    add_column :assignments, :attemps_count, :integer, default: 0
  end
end
