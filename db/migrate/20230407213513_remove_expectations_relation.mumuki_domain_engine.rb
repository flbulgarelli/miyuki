# This migration comes from mumuki_domain_engine (originally 20150714000532)
class RemoveExpectationsRelation < ActiveRecord::Migration[4.2]
  def change
    drop_table :expectations
  end
end
