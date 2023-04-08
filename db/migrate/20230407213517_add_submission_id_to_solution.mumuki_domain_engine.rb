# This migration comes from mumuki_domain_engine (originally 20150723052640)
class AddSubmissionIdToSolution < ActiveRecord::Migration[4.2]
  def change
    add_column :solutions, :submission_id, :string
  end
end
