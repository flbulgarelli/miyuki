# This migration comes from mumuki_domain_engine (originally 20181117190241)
class AddFeedbackToLanguage < ActiveRecord::Migration[5.1]
  def change
    add_column :languages, :feedback, :boolean
  end
end
