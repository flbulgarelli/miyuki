# This migration comes from mumuki_domain_engine (originally 20151108173838)
class RemoveSlugs < ActiveRecord::Migration[4.2]
  def change
    drop_table :friendly_id_slugs
  end
end
