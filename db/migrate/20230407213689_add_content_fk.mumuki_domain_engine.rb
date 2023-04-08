# This migration comes from mumuki_domain_engine (originally 20190312152901)
class AddContentFk < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :lessons, :guides
    add_foreign_key :complements, :guides
    add_foreign_key :chapters, :topics
    add_foreign_key :organizations, :books
  end
end
