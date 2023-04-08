# This migration comes from mumuki_domain_engine (originally 20181101180652)
class AddUniqueIndexToOrganizationsName < ActiveRecord::Migration[5.1]
  def change
    add_index :organizations, :name, unique: true
  end
end
