# This migration comes from mumuki_domain_engine (originally 20160512134321)
class AddOrganizationImage < ActiveRecord::Migration[4.2]
  def change
    add_column :organizations, :logo_url, :string
  end
end
