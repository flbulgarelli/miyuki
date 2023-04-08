# This migration comes from mumuki_domain_engine (originally 20150108014005)
class AddLocaleToExercise < ActiveRecord::Migration[4.2]
  def change
    add_column :exercises, :locale, :string, index: true, default: 'en'
  end
end
