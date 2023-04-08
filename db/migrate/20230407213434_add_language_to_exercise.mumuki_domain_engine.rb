# This migration comes from mumuki_domain_engine (originally 20141121122921)
class AddLanguageToExercise < ActiveRecord::Migration[4.2]
  def change
    add_column :exercises, :language, :integer, default: 0
  end
end
