# This migration comes from mumuki_domain_engine (originally 20160222165337)
class AddHiddenFlagToExtraCode < ActiveRecord::Migration[4.2]
  def change
    add_column :exercises, :extra_visible, :boolean, default: false
  end
end
