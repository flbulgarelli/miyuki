# This migration comes from mumuki_domain_engine (originally 20190929180601)
class AddExpectationsToLanguage < ActiveRecord::Migration[5.1]
  def change
    add_column :languages, :expectations, :boolean
  end
end
