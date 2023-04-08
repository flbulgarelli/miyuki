# This migration comes from mumuki_domain_engine (originally 20151104220859)
class RemovePathFromGuide < ActiveRecord::Migration[4.2]
  def change
    remove_column :guides, :path_id, :integer
  end
end
