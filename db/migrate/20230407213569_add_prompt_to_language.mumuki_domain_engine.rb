# This migration comes from mumuki_domain_engine (originally 20160307184203)
class AddPromptToLanguage < ActiveRecord::Migration[4.2]
  def change
    add_column :languages, :prompt, :string
  end
end
