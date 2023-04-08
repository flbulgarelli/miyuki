# This migration comes from mumuki_domain_engine (originally 20160214191548)
class RequiredBibliothecaId < ActiveRecord::Migration[4.2]
  def change
    change_column :exercises, :bibliotheca_id, :integer, null: false
  end
end
