# This migration comes from mumuki_domain_engine (originally 20160427195306)
class CreateOrganizations < ActiveRecord::Migration[4.2]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :contact_email
      t.text :description
      t.references :book, index: true

      t.timestamps
    end
  end
end
