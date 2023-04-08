# This migration comes from mumuki_domain_engine (originally 20141225211350)
class AddStatusToImport < ActiveRecord::Migration[4.2]
  def change
    add_column :imports, :status, :integer, default: 0
  end
end

