# This migration comes from mumuki_domain_engine (originally 20141120231135)
class CreateExercises < ActiveRecord::Migration[4.2]
  def change
    create_table :exercises do |t|
      t.string :title
      t.string :description
      t.text :test

      t.timestamps
    end
  end
end
