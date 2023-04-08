# This migration comes from mumuki_domain_engine (originally 20160812003350)
class ChangeDefaultLoginMethods < ActiveRecord::Migration[4.2]
  def change
    change_column :organizations, :login_methods, :string, null: false
  end
end
