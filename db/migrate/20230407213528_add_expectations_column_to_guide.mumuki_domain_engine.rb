# This migration comes from mumuki_domain_engine (originally 20150829215524)
class AddExpectationsColumnToGuide < ActiveRecord::Migration[4.2]
  def change
    add_column :guides, :expectations, :text
  end
end
