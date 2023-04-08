# This migration comes from mumuki_domain_engine (originally 20190123180147)
class AddLearnMoreSection < ActiveRecord::Migration[5.1]
  def change
    add_column :guides, :learn_more, :text
  end
end
