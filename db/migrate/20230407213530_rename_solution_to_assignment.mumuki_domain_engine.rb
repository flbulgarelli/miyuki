# This migration comes from mumuki_domain_engine (originally 20151001143118)
class RenameSolutionToAssignment < ActiveRecord::Migration[4.2]
  def change
    rename_table :solutions, :assignments
  end
end
