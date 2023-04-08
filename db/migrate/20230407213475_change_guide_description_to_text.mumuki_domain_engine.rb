# This migration comes from mumuki_domain_engine (originally 20150411215351)
class ChangeGuideDescriptionToText < ActiveRecord::Migration[4.2]
  def change
    change_column :guides, :description, :text
  end
end
