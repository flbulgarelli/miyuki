# This migration comes from mumuki_domain_engine (originally 20151003003856)
class AddTypeToExercise < ActiveRecord::Migration[4.2]
  def change
    add_column :exercises, :type, :string, default: 'Problem', null: false
  end
end