# This migration comes from mumuki_domain_engine (originally 20190506180102)
class AddMultifileToLanguages < ActiveRecord::Migration[5.1]
  def change
    add_column :languages, :multifile, :boolean, default: false
  end
end
