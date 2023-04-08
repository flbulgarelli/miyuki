# This migration comes from mumuki_domain_engine (originally 20190530173142)
class AddOrganizationToAssignment < ActiveRecord::Migration[5.1]
  def change
    add_reference :assignments, :organization, index: true
  end
end
