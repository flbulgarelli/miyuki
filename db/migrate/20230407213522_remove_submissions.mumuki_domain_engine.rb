# This migration comes from mumuki_domain_engine (originally 20150819202310)
class RemoveSubmissions < ActiveRecord::Migration[4.2]
  def change
    drop_table :submissions
  end
end
