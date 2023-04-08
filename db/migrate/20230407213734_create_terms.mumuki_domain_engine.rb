# This migration comes from mumuki_domain_engine (originally 20201027152806)
class CreateTerms < ActiveRecord::Migration[5.1]
  def change
    create_table :terms do |t|
      t.string :locale
      t.string :scope
      t.text :content
      t.text :header

      t.timestamps
    end
  end
end
