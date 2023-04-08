# This migration comes from mumuki_domain_engine (originally 20160430225048)
class CreateComplements < ActiveRecord::Migration[4.2]
  def change
    create_table :complements do |t|
      t.references :guide, index: true
      t.references :book, index: true

      t.timestamps
    end
  end
end
