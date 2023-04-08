# This migration comes from mumuki_domain_engine (originally 20160815225314)
class RenameLongDescriptionToAppendix < ActiveRecord::Migration[4.2]
  def change
    rename_column :topics, :long_description, :appendix
  end
end
