# This migration comes from mumuki_domain_engine (originally 20201026225312)
class AddOrganizationWinsPageFlag < ActiveRecord::Migration[5.1]
  def change
    add_column :organizations, :wins_page, :boolean
  end
end
