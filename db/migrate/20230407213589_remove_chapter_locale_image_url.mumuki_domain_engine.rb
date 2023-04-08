# This migration comes from mumuki_domain_engine (originally 20160430235656)
class RemoveChapterLocaleImageUrl < ActiveRecord::Migration[4.2]
  def change
    remove_column :chapters, :locale
    remove_column :chapters, :image_url
  end
end
