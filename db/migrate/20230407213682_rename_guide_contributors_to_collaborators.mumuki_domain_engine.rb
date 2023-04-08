# This migration comes from mumuki_domain_engine (originally 20181113183935)
class RenameGuideContributorsToCollaborators < ActiveRecord::Migration[5.1]
  def change
    rename_column :guides, :contributors, :collaborators
  end
end
