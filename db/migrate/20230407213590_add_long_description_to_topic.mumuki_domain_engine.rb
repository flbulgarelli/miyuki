# This migration comes from mumuki_domain_engine (originally 20160501003355)
class AddLongDescriptionToTopic < ActiveRecord::Migration[4.2]
  def change
    add_column :topics, :long_description, :text
  end
end
