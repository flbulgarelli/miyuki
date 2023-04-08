# This migration comes from mumuki_domain_engine (originally 20160427223805)
class AddChapterBook < ActiveRecord::Migration[4.2]
  def change
    add_column :chapters, :book_id, :integer, index: true
  end
end
