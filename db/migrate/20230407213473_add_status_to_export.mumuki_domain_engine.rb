# This migration comes from mumuki_domain_engine (originally 20150408020712)
class AddStatusToExport < ActiveRecord::Migration[4.2]
  def change
    add_column :exports, :status, :integer, default: 0
    add_column :exports, :result, :text
  end
end
