# This migration comes from mumuki_domain_engine (originally 20210119160440)
class AddPreventManualEvaluationContentToOrganizations < ActiveRecord::Migration[5.1]
  def change
    add_column :organizations, :prevent_manual_evaluation_content, :boolean
  end
end
