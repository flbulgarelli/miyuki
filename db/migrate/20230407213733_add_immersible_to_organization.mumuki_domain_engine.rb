# This migration comes from mumuki_domain_engine (originally 20201027134205)
class AddImmersibleToOrganization < ActiveRecord::Migration[5.1]
  def change
    add_column :organizations, :immersible, :boolean
  end
end
