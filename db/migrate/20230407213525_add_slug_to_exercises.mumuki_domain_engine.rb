# This migration comes from mumuki_domain_engine (originally 20150826024859)
class AddSlugToExercises < ActiveRecord::Migration[4.2]
  def change
    add_column :exercises, :slug, :string
    add_index :exercises, :slug, unique: true
  end
end
