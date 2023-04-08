# This migration comes from mumuki_domain_engine (originally 20201007143455)
class AddTermsForUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :headmaster_terms_accepted_at, :datetime
    add_column :users, :janitor_terms_accepted_at, :datetime
    add_column :users, :moderator_terms_accepted_at, :datetime
    add_column :users, :student_terms_accepted_at, :datetime
    add_column :users, :teacher_terms_accepted_at, :datetime

    add_column :users, :privacy_terms_accepted_at, :datetime
    add_column :users, :legal_terms_accepted_at, :datetime

    add_column :users, :forum_terms_accepted_at, :datetime
  end
end
