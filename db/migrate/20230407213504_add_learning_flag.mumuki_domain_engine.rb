# This migration comes from mumuki_domain_engine (originally 20150614173852)
class AddLearningFlag < ActiveRecord::Migration[4.2]
  def change
    add_column :guides, :learning, :boolean, default: false
  end
end
