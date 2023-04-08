# This migration comes from mumuki_domain_engine (originally 20151218172557)
class DropImport < ActiveRecord::Migration[4.2]
  def change
    drop_table :imports
    drop_table :exports
  end
end
