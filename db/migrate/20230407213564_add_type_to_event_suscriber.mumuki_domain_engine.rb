# This migration comes from mumuki_domain_engine (originally 20160120171336)
class AddTypeToEventSuscriber < ActiveRecord::Migration[4.2]
  def change
    add_column :event_subscribers, :type, :string, default: 'EventSubscriber', null: false
  end
end
