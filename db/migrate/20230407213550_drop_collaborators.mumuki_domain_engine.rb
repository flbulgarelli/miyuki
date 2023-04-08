# This migration comes from mumuki_domain_engine (originally 20151211032811)
class DropCollaborators < ActiveRecord::Migration[4.2]
  def change
    drop_table :collaborators
  end
end
