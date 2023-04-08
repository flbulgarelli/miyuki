# This migration comes from mumuki_domain_engine (originally 20150405232603)
class AddDefaultGuideToUser < ActiveRecord::Migration[4.2]
  def change
    add_column :users, :default_guide_id, :integer, index: true, uniq: true
  end
end
