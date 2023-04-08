# This migration comes from mumuki_domain_engine (originally 20141124032114)
class AddUserToSubmission < ActiveRecord::Migration[4.2]
  def change
    add_reference :submissions, :user, index: true
  end
end
