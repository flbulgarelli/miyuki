# This migration comes from mumuki_domain_engine (originally 20160516191936)
class AddStatefulConsoleToLanguage < ActiveRecord::Migration[4.2]
  def change
    add_column :languages, :stateful_console, :boolean, default: false
  end
end
