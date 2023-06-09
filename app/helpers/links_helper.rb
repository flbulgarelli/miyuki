module LinksHelper

  def link_to_path_element(element, options={})
    name = extract_name element, options
    link_to name, element, options
  end

  def link_to_error_404
    "<a href='https://es.wikipedia.org/wiki/Error_404'> #{I18n.t(:error_404)} </a>"
  end

  def link_to_issues(translation)
    "<a href='https://github.com/mumuki/mumuki-laboratory/issues/new'> #{I18n.t(translation)} </a>"
  end

  def link_to_status_codes(code)
    "<a href='https://es.wikipedia.org/wiki/Anexo:C%C3%B3digos_de_estado_HTTP' target='_blank'> #{I18n.t("error_#{code}")} </a>"
  end

  def mail_to_administrator
    mail_to Organization.current.contact_email,
            Organization.current.contact_email,
            subject: I18n.t(:permissions),
            body: permissions_help_email_body(current_user, Organization.current)
  end

  def link_to_faqs
    link_to t(:faqs), faqs_path, target: '_blank' if faqs_enabled_here?
  end

  def turbolinks_enable_for(exercise)
    %Q{data-turbolinks="#{!exercise.input_kids?}"}.html_safe
  end

  def faqs_enabled_here?
    current_access_mode.faqs_here?
  end

  private

  def extract_name(named, options)
    case options.delete(:mode)
      when :plain
        named.name
      when :friendly
        named.friendly
      else
        named.navigable_name
    end
  end
end
