# This migration comes from mumuki_domain_engine (originally 20151222153838)
class AddDefaultContentToExercise < ActiveRecord::Migration[4.2]
  def change
    add_column :exercises, :default_content, :string, null: true
  end
end
