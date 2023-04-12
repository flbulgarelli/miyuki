class ActionView::Helpers::FormBuilder
  def editor(field, language = 'dynamic', options = {})
    text_area field, self.class.editor_defaults(language, options, 'form-control editor')
  end

  def self.editor_defaults(language, options, styles = '')
    {
      class: styles,
      data: {placeholder: I18n.t(:editor_placeholder),
            'editor-language' => language},
      rows: 15
    }.deep_merge(options)
  end

end
