# This migration comes from mumuki_domain_engine (originally 20201026222942)
class AddDisplayNameAndDescriptionToOrganizations < ActiveRecord::Migration[5.1]
  def change
    add_column :organizations, :display_name, :text
    add_column :organizations, :display_description, :text
  end
end
