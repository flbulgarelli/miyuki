# This migration comes from mumuki_domain_engine (originally 20151211035206)
class AddContactEmailToTenant < ActiveRecord::Migration[4.2]
  def change
    add_column :tenants, :contact_email, :string, null: false, default: 'info@mumuki.org'
  end
end
