module EditorHelper
  def read_only_editor(content, language, options = {})
    editor_options = ActionView::Helpers::FormBuilder.editor_defaults(language, options.deep_merge(data: { readonly: true }), 'editor')
    text_area_tag 'solution[content]', content, editor_options
  end

  def spell_checked_editor(name, options = {})
    editor_options = ActionView::Helpers::FormBuilder.editor_defaults('markdown', options, 'form-control mu-spell-checked-editor')
    text_area_tag name, '', editor_options
  end
end
