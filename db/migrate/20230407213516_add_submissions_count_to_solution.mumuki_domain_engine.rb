# This migration comes from mumuki_domain_engine (originally 20150722142019)
class AddSubmissionsCountToSolution < ActiveRecord::Migration[4.2]
  def change
    add_column :solutions, :submissions_count, :integer, default: 0, null: false
  end
end
