# This migration comes from mumuki_domain_engine (originally 20161004202742)
class AddEditorToProblem < ActiveRecord::Migration[4.2]
  def change
    add_column :exercises, :editor, :integer, default: 0, null: false
    add_column :exercises, :choices, :text, null: false
  end
end
