# This migration comes from mumuki_domain_engine (originally 20160108191156)
class RenameExtraCode < ActiveRecord::Migration[4.2]
  def change
    rename_column :exercises, :extra_code, :extra
  end
end
