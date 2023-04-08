# This migration comes from mumuki_domain_engine (originally 20150415053559)
class AddImageUrlToUser < ActiveRecord::Migration[4.2]
  def change
    add_column :users, :image_url, :string
  end
end
