# This migration comes from mumuki_domain_engine (originally 20201019191036)
class AddMisplacedFlagToSubmission < ActiveRecord::Migration[5.1]
  def change
    add_column :assignments, :misplaced, :boolean
  end
end
