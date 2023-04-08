# This migration comes from mumuki_domain_engine (originally 20150519220307)
class RenameApiTokenColumns < ActiveRecord::Migration[4.2]
  def change
    rename_column :api_tokens, :name, :client_id
    rename_column :api_tokens, :value, :client_secret
  end
end
