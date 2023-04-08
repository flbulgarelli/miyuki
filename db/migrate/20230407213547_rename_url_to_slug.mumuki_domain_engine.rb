# This migration comes from mumuki_domain_engine (originally 20151208233707)
class RenameUrlToSlug < ActiveRecord::Migration[4.2]
  def change
   rename_column :guides, :url, :slug
  end
end
