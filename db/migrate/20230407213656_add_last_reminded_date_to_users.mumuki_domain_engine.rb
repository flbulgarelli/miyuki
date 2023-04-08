# This migration comes from mumuki_domain_engine (originally 20180130194923)
class AddLastRemindedDateToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :last_reminded_date, :datetime
  end
end
