# This migration comes from mumuki_domain_engine (originally 20151206072741)
class RenameGuideExtraCodeToExtra < ActiveRecord::Migration[4.2]
  def change
    rename_column :guides, :extra_code, :extra
  end
end
