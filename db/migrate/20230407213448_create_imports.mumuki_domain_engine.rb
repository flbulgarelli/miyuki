# This migration comes from mumuki_domain_engine (originally 20141225195510)
class CreateImports < ActiveRecord::Migration[4.2]
  def change
    create_table :imports do |t|
      t.references :guide

      t.timestamps
    end
  end
end
