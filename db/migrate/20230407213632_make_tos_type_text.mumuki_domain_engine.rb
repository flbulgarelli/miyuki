# This migration comes from mumuki_domain_engine (originally 20170224061531)
class MakeTosTypeText < ActiveRecord::Migration[4.2]
  def change
    change_column :organizations, :terms_of_service, :text
  end
end
