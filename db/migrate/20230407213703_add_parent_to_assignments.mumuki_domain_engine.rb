# This migration comes from mumuki_domain_engine (originally 20191105171244)
class AddParentToAssignments < ActiveRecord::Migration[5.1]
  def change
    add_reference :assignments, :parent
  end
end
