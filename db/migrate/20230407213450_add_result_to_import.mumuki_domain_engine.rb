# This migration comes from mumuki_domain_engine (originally 20141226010922)
class AddResultToImport < ActiveRecord::Migration[4.2]
  def change
    add_column :imports, :result, :text
  end
end
