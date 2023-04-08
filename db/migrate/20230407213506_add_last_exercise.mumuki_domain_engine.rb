# This migration comes from mumuki_domain_engine (originally 20150614191257)
class AddLastExercise < ActiveRecord::Migration[4.2]
  def change
    add_reference :users, :last_exercise, null:true
  end
end
