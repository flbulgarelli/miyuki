# This migration comes from mumuki_domain_engine (originally 20151104172241)
class CreatePathRules < ActiveRecord::Migration[4.2]
  def change
    create_table :path_rules do |t|
      t.references :guide
      t.references :path
      t.integer :position

      t.timestamps
    end
  end
end
