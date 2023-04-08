# This migration comes from mumuki_domain_engine (originally 20150507215646)
class RemoveRelationship < ActiveRecord::Migration[4.2]
  def change
    drop_table :relationships
  end
end
