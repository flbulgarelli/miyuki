# This migration comes from mumuki_domain_engine (originally 20171003204209)
class AddQueriesToAssignment < ActiveRecord::Migration[4.2]
  def change
    add_column :assignments, :queries, :string
    add_column :assignments, :query_results, :text
  end
end
