# This migration comes from mumuki_domain_engine (originally 20151107232242)
class MoveSlugToPathRule < ActiveRecord::Migration[4.2]
  def change
    remove_column :guides, :slug, :string
    add_column :path_rules, :slug, :string, unique: true
  end
end
