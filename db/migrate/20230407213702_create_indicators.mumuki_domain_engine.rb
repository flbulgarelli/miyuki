# This migration comes from mumuki_domain_engine (originally 20191029200548)
class CreateIndicators < ActiveRecord::Migration[5.1]
  def change
    create_table :indicators do |t|
      t.references :user
      t.references :organization
      t.references :parent
      t.references :content, polymorphic: true

      t.timestamps
    end
  end
end
