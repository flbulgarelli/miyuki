# This migration comes from mumuki_domain_engine (originally 20171024182244)
class AddDeviconAndCommentTypeToLanguage < ActiveRecord::Migration[4.2]
  def change
    add_column :languages, :devicon, :string
    add_column :languages, :comment_type, :string, default: 'cpp'
  end
end
