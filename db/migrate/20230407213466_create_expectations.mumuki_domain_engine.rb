# This migration comes from mumuki_domain_engine (originally 20150328211331)
class CreateExpectations < ActiveRecord::Migration[4.2]
  def change
    create_table :expectations do |t|
      t.references :exercise
      t.string :binding
      t.string :inspection

      t.timestamps
    end
  end
end
