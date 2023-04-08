# This migration comes from mumuki_domain_engine (originally 20150412201651)
class RemoveDefaultGuideFromUser < ActiveRecord::Migration[4.2]
  def change
    remove_column :users, :default_guide_id
  end
end
