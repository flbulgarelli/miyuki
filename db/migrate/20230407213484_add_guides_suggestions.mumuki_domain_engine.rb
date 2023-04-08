# This migration comes from mumuki_domain_engine (originally 20150428195229)
class AddGuidesSuggestions < ActiveRecord::Migration[4.2]
  def change
    create_table :suggested_guides do |t|
      t.integer :guide_id
      t.integer :suggested_guide_id
    end
  end
end
