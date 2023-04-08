# This migration comes from mumuki_domain_engine (originally 20151208224736)
class RenamePathRuleToChapterGuide < ActiveRecord::Migration[4.2]
  def change
    rename_table :path_rules, :chapter_guides
  end
end
