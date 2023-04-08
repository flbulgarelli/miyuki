# This migration comes from mumuki_domain_engine (originally 20141208005050)
class AddAuthorToExercise < ActiveRecord::Migration[4.2]
  def change
    add_reference :exercises, :author, index: true
  end
end
