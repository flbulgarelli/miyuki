# This migration comes from mumuki_domain_engine (originally 20181121165956)
class RenameChoicesColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :exercises, :choices, :choice_values
    add_column :exercises, :choices, :text
  end
end
