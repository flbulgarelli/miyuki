# This migration comes from mumuki_domain_engine (originally 20150412042959)
class AddCommitterToImport < ActiveRecord::Migration[4.2]
  def change
    add_column :imports, :committer_id, :integer, index: true
  end
end
