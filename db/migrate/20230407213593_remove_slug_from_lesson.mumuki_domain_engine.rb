# This migration comes from mumuki_domain_engine (originally 20160506035230)
class RemoveSlugFromLesson < ActiveRecord::Migration[4.2]
  def change
    remove_column :lessons, :slug
  end
end
