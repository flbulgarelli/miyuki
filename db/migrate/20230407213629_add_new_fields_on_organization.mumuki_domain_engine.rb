# This migration comes from mumuki_domain_engine (originally 20170125185012)
class AddNewFieldsOnOrganization < ActiveRecord::Migration[4.2]
  def change
    change_column :organizations, :private, :boolean,  default: false

    change_table :organizations do |t|
      t.rename :private, :public
      t.integer :book_ids

      t.string :terms_of_service
      t.string :locale
      t.string :theme_stylesheet_url
      t.string :extension_javascript_url
    end
  end
end
