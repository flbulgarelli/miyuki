# This migration comes from mumuki_domain_engine (originally 20151208225503)
class RenameChapterPositionToNumber < ActiveRecord::Migration[4.2]
  def change
    rename_column :chapters, :position, :number
  end
end
