# This migration comes from mumuki_domain_engine (originally 20200127142401)
class AddPrivateToTopicsAndBooks < ActiveRecord::Migration[5.1]
  def change
    add_column :topics, :private, :boolean, default: false
    add_column :books, :private, :boolean, default: false
  end
end
