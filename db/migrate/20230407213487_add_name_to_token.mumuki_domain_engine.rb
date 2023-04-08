# This migration comes from mumuki_domain_engine (originally 20150509191428)
class AddNameToToken < ActiveRecord::Migration[4.2]
  def change
    add_column :api_tokens, :name, :string, null: false
  end
end
