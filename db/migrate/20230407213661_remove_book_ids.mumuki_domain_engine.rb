# This migration comes from mumuki_domain_engine (originally 20180326224511)
class RemoveBookIds < ActiveRecord::Migration[5.1]
  def change
    remove_column :organizations, :book_ids
  end
end
