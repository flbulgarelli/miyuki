# This migration comes from mumuki_domain_engine (originally 20160506175610)
class RemoveApiTokens < ActiveRecord::Migration[4.2]
  def change
    drop_table :api_tokens
  end
end
