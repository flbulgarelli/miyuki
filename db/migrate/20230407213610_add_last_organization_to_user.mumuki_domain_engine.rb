# This migration comes from mumuki_domain_engine (originally 20160617175235)
class AddLastOrganizationToUser < ActiveRecord::Migration[4.2]
  def change
    add_reference :users, :last_organization, index: true
  end
end
