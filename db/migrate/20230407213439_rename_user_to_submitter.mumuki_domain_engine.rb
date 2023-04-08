# This migration comes from mumuki_domain_engine (originally 20141208005125)
class RenameUserToSubmitter < ActiveRecord::Migration[4.2]
  def change
    rename_column :submissions, :user_id, :submitter_id
  end
end
