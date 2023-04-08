# This migration comes from mumuki_domain_engine (originally 20190702182407)
class AddNewProfileFields < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :birthdate, :date
    add_column :users, :gender, :integer
  end
end
