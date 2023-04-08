# This migration comes from mumuki_domain_engine (originally 20150614180512)
class AddBetaFlag < ActiveRecord::Migration[4.2]
  def change
    add_column :guides, :beta, :boolean, default: false
  end
end
