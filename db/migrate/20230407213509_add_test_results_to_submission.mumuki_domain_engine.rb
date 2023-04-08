# This migration comes from mumuki_domain_engine (originally 20150701212609)
class AddTestResultsToSubmission < ActiveRecord::Migration[4.2]
  def change
    add_column :submissions, :test_results, :text
  end
end
