# This migration comes from mumuki_domain_engine (originally 20160428162753)
class AddTopicIdToLesson < ActiveRecord::Migration[4.2]
  def change
    add_column :lessons, :topic_id, :integer, index: true
  end
end
