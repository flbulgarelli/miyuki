# This migration comes from mumuki_domain_engine (originally 20151001183858)
class RenameAssignmentContentToSolution < ActiveRecord::Migration[4.2]
  def change
    rename_column :assignments, :content, :solution
  end
end
