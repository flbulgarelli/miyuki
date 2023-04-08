# This migration comes from mumuki_domain_engine (originally 20160426171156)
class AddNewExpectationsToExercise < ActiveRecord::Migration[4.2]
  def change
    add_column :exercises, :new_expectations, :boolean, default: false
  end
end
