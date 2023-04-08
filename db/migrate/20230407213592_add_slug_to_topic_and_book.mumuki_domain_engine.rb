# This migration comes from mumuki_domain_engine (originally 20160506012945)
class AddSlugToTopicAndBook < ActiveRecord::Migration[4.2]
  def change
    add_column :books,  :slug, :string
    add_column :topics, :slug, :string

    add_index :books, :slug, unique: true
    add_index :topics, :slug, unique: true
  end
end
