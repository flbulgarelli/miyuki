# This migration comes from mumuki_domain_engine (originally 20170818185127)
class AddGuideSlugConstraint < ActiveRecord::Migration[4.2]
  def change
    add_index :guides, :slug, unique: true
  end
end
