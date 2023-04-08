# This migration comes from mumuki_domain_engine (originally 20150405231013)
class CreateExports < ActiveRecord::Migration[4.2]
  def change
    create_table :exports do |t|
      t.references :guide, index: true

      t.timestamps
    end
  end
end
