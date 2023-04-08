# This migration comes from mumuki_domain_engine (originally 20150508015148)
class CreateApiTokens < ActiveRecord::Migration[4.2]
  def change
    create_table :api_tokens do |t|
      t.string :value
      t.string :description

      t.timestamps
    end
  end
end
