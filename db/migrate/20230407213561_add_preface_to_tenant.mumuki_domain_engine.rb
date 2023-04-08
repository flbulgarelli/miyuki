# This migration comes from mumuki_domain_engine (originally 20160119024542)
class AddPrefaceToTenant < ActiveRecord::Migration[4.2]
  def change
    add_column :tenants, :preface, :text
  end
end
