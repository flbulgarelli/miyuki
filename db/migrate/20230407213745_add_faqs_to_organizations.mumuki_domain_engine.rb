# This migration comes from mumuki_domain_engine (originally 20210302181654)
class AddFAQsToOrganizations < ActiveRecord::Migration[5.1]
  def change
    add_column :organizations, :faqs, :text
  end
end
