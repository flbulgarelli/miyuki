# This migration comes from mumuki_domain_engine (originally 20180526141344)
class AddTipsRulesToExercise < ActiveRecord::Migration[5.1]
  def change
    add_column :exercises, :assistance_rules, :text
  end
end
