module BreadcrumbsHelper

  def breadcrumbs(e, extra=nil)
    breadcrumbs0(e.navigable_name, e, extra, 'last')
  end

  def header_breadcrumbs(link_for_organization: true)
    "#{home_breadcrumb} #{organization_breadcrumb(has_link: link_for_organization)}".html_safe
  end

  def home_breadcrumb
    home = "<i class='da da-mumuki' aria-label=#{t(:home)}></i>".html_safe
    breadcrumb_item_for_linkable home, mu_home_path, 'brand'
  end

  def mu_home_path
    root_path
  end

  def breadcrumb_item_class(clazz)
    "class='mu-breadcrumb-list-item #{clazz}'"
  end

  def breadcrumb_list_item(item, clazz='')
    "<li #{breadcrumb_item_class(clazz)}>#{h item}</li>".html_safe
  end

  def breadcrumb_item_for_linkable(e, link_path, clazz='')
    breadcrumb_list_item link_to(e, link_path), clazz
  end

  def breadcrumb_name_for(discussion)
    discussion.friendly.truncate_words(4)
  end

  def breadcrumbs_for_my_account
    header_breadcrumbs + breadcrumb_list_item(t(:my_account), 'last')
  end

  private

  def breadcrumbs_for_linkable(e, extra=nil, last='')
    breadcrumbs0(link_to_path_element(e), e, extra, last)
  end

  def breadcrumbs0(base, e, extra, last)
    return "#{breadcrumbs_for_linkable(e)} #{breadcrumb_list_item(extra, last)}".html_safe if extra

    if e.navigation_end?
      "#{header_breadcrumbs} #{breadcrumb_list_item(base, last)}".html_safe
    else
      "#{breadcrumbs_for_linkable(e.navigable_parent)} #{breadcrumb_list_item(base, last)}".html_safe
    end
  end
end
