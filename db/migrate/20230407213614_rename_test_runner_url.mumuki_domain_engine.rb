# This migration comes from mumuki_domain_engine (originally 20160715001254)
class RenameTestRunnerUrl < ActiveRecord::Migration[4.2]
  def change
    rename_column :languages, :test_runner_url, :runner_url
  end
end
