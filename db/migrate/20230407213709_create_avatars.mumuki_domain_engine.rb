# This migration comes from mumuki_domain_engine (originally 20200508191543)
class CreateAvatars < ActiveRecord::Migration[5.1]
  def change
    create_table :avatars do |t|
      t.string :image_url
      t.string :description
    end
  end
end
