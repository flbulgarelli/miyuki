# This migration comes from mumuki_domain_engine (originally 20200608132959)
class AddProgressiveDisplayLookaheadToOrganizations < ActiveRecord::Migration[5.1]
  def change
    add_column :organizations, :progressive_display_lookahead, :integer
  end
end
