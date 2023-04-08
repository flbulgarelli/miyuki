# This migration comes from mumuki_domain_engine (originally 20160506172239)
class RemoveEventSubscriber < ActiveRecord::Migration[4.2]
  def change
    drop_table :event_subscribers
  end
end
