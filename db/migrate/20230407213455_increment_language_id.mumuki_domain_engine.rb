# This migration comes from mumuki_domain_engine (originally 20141231234940)
class IncrementLanguageId < ActiveRecord::Migration[4.2]
  def change
    execute 'update exercises set language_id = language_id + 1'
  end
end
