# This migration comes from mumuki_domain_engine (originally 20150529141430)
class AddCorollaryToExercise < ActiveRecord::Migration[4.2]
  def change
    add_column :exercises, :corollary, :text
  end
end
