# This migration comes from mumuki_domain_engine (originally 20181105152420)
class RemoveContactEmailFromBook < ActiveRecord::Migration[5.1]
  def change
    remove_column :books, :contact_email, :string
  end
end
