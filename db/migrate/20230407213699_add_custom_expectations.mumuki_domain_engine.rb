# This migration comes from mumuki_domain_engine (originally 20190918140026)
class AddCustomExpectations < ActiveRecord::Migration[5.1]
  def change
    add_column :exercises, :custom_expectations, :text
    add_column :guides, :custom_expectations, :text
  end
end
