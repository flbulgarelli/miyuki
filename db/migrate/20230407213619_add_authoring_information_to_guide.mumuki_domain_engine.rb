# This migration comes from mumuki_domain_engine (originally 20160830160937)
class AddAuthoringInformationToGuide < ActiveRecord::Migration[4.2]
  def change
    add_column :guides, :authors, :text
    add_column :guides, :contributors, :text
  end
end
