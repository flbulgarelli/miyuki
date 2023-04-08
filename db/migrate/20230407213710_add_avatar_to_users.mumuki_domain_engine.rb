# This migration comes from mumuki_domain_engine (originally 20200518135658)
class AddAvatarToUsers < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :avatar, index: false
  end
end
