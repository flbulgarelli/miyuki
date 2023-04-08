# This migration comes from mumuki_domain_engine (originally 20160205184243)
class AddBibliothecaIdToExercise < ActiveRecord::Migration[4.2]
  def change
    add_column :exercises, :bibliotheca_id, :integer, default: nil
  end
end
