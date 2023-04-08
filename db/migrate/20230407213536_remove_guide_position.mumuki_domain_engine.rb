# This migration comes from mumuki_domain_engine (originally 20151104173956)
class RemoveGuidePosition < ActiveRecord::Migration[4.2]
  def change
    remove_column :guides, :position, :integer
  end
end
