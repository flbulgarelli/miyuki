# This migration comes from mumuki_domain_engine (originally 20150330020553)
class AddExpectationResultsToSubmission < ActiveRecord::Migration[4.2]
  def change
    add_column :submissions, :expectation_results, :text
  end
end
