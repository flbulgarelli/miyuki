# This migration comes from mumuki_domain_engine (originally 20181022043658)
class AddPrivateFlagForGuides < ActiveRecord::Migration[5.1]
  def change
    add_column :guides, :private, :boolean, default: false
  end
end
