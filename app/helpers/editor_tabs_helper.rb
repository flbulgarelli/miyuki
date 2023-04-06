module EditorTabsHelper
  def extra_code_tab
    "<li role='presentation'>
        <a class='editor-tab nav-link' data-bs-target='#visible-extra' aria-controls='visible-extra' role='tab' data-bs-toggle='tab'>
          #{fa_icon 'code', text: (t 'activerecord.attributes.exercise.extra')}
        </a>
    </li>".html_safe
  end

  def console_tab(active: false)
    "<li role='presentation'>
        <a class='editor-tab nav-link #{'active' if active}' data-bs-target='#console' aria-controls='console' tabindex='0' role='tab' data-bs-toggle='tab' >
          #{fa_icon 'terminal', text: (t :console)}
        </a>
     </li>".html_safe
  end
end
