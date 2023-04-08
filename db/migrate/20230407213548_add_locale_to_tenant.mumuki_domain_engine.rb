# This migration comes from mumuki_domain_engine (originally 20151209021925)
class AddLocaleToTenant < ActiveRecord::Migration[4.2]
  def change
    add_column :tenants, :locale, :string, default: :en
  end
end
