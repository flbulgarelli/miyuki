# This migration comes from mumuki_domain_engine (originally 20150713120916)
class AddExpectationsColumnToExercise < ActiveRecord::Migration[4.2]
  def change
    add_column :exercises, :expectations, :text
  end
end
