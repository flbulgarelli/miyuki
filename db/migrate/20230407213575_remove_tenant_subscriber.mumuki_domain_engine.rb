# This migration comes from mumuki_domain_engine (originally 20160414150800)
class RemoveTenantSubscriber < ActiveRecord::Migration[4.2]
  def change
    remove_column :event_subscribers, :type
  end
end
