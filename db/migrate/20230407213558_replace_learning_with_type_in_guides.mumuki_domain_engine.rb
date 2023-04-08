# This migration comes from mumuki_domain_engine (originally 20151229153839)
class ReplaceLearningWithTypeInGuides < ActiveRecord::Migration[4.2]
  def change
    remove_column :guides, :learning, :boolean, default: false
    add_column :guides, :type, :integer, default: 0, null: false
  end
end
