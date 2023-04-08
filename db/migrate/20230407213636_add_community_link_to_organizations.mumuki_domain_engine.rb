# This migration comes from mumuki_domain_engine (originally 20170526191251)
class AddCommunityLinkToOrganizations < ActiveRecord::Migration[4.2]
  def change
    add_column :organizations, :community_link, :string
  end
end
