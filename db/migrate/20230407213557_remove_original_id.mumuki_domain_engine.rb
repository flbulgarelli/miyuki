# This migration comes from mumuki_domain_engine (originally 20151224174248)
class RemoveOriginalId < ActiveRecord::Migration[4.2]
  def change
    remove_column :exercises, :original_id
  end
end
