# This migration comes from mumuki_domain_engine (originally 20150722003532)
class CreateEventSubscribers < ActiveRecord::Migration[4.2]
  def change
    create_table :event_subscribers do |t|
      t.string :url
      t.boolean :enabled

      t.timestamps
    end
  end
end
