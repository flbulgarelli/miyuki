module StudentPathNavigationHelper
  class NextParentNavigation < ContinueNavigation
    def sibling_for(navigable)
      super(navigable.navigable_parent)
    end
  end
end
