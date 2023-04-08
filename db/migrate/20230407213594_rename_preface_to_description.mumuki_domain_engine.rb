# This migration comes from mumuki_domain_engine (originally 20160506041446)
class RenamePrefaceToDescription < ActiveRecord::Migration[4.2]
  def change
    rename_column :books, :preface, :description
  end
end
