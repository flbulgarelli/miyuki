# This migration comes from mumuki_domain_engine (originally 20151223014138)
class ChangeLanguageIconUrlIntoDeviconId < ActiveRecord::Migration[4.2]
  def change
    rename_column :languages, :image_url, :devicon
  end
end
