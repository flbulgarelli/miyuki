# This migration comes from mumuki_domain_engine (originally 20141121013100)
class AddResultToSubmission < ActiveRecord::Migration[4.2]
  def change
    add_column :submissions, :result, :text
  end
end
