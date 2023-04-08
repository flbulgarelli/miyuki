# This migration comes from mumuki_domain_engine (originally 20180123180836)
class AddAcceptsRemindersToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :accepts_reminders, :boolean, default: true
  end
end
