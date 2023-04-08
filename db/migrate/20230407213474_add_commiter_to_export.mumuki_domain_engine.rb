# This migration comes from mumuki_domain_engine (originally 20150408022654)
class AddCommiterToExport < ActiveRecord::Migration[4.2]
  def change
    add_column :exports, :committer_id, :integer, index: true
  end
end
