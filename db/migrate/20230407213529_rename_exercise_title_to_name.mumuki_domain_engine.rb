# This migration comes from mumuki_domain_engine (originally 20150905214532)
class RenameExerciseTitleToName < ActiveRecord::Migration[4.2]
  def change
    rename_column :exercises, :title, :name
  end
end
