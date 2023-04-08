# This migration comes from mumuki_domain_engine (originally 20150519131033)
class SetDefaultLocaleForGuide < ActiveRecord::Migration[4.2]
  def change
    change_column :guides, :locale, :string, default: :en
  end
end
