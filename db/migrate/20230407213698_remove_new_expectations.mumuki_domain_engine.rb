# This migration comes from mumuki_domain_engine (originally 20190918134321)
class RemoveNewExpectations < ActiveRecord::Migration[5.1]
  def change
    remove_column :exercises, :new_expectations, :boolean
  end
end
