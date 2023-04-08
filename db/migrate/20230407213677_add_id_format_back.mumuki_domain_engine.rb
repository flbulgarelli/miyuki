# This migration comes from mumuki_domain_engine (originally 20181021151505)
class AddIdFormatBack < ActiveRecord::Migration[5.1]
  def change
    add_column :guides, :id_format, :string, default: '%05d'
  end
end
