module IconsHelper
  def status_icon(status_like)
    fa_icon *icon_for(status_like.to_submission_status)
  end

  def fixed_fa_icon(name, options = {})
    fa_icon name, options.merge(class: 'fa-fw fixed-icon')
  end

  def assignment_status_icon(assignment)
    link_to contextualization_fa_icon(assignment, {
              class: 'progress-list-item',
              data: {'mu-exercise-id': assignment.exercise.id}
            }),
            exercise_path(assignment.exercise) if current_user?
  end

  def language_icon(language)
    tag('span', class: "fa da da-#{language.devicon} lang-icon", alt: language.name)
  end

  private

  def contextualization_fa_icon(contextualization, options={})
    fa_icon(*icon_for(contextualization, options))
  end

  def icon_for(iconizable, options={})
    iconized = iconizable.iconize
    [iconized[:type], class: "text-#{iconized[:class]} status-icon #{options[:class]}", data: options[:data]]
  end

  def icon_class_for(iconizable)
    iconizable.iconize[:class].to_s
  end

  def icon_type_for(iconizable)
    iconizable.iconize[:type].to_s
  end

  def label_for_contextualization(contextualization, **options)
    iconized = contextualization.iconize
    %Q{
      <span class="text-#{iconized[:class]} status-label">
        #{fa_icon "#{iconized[:type]}"}
        <span class="#{options[:class]}">#{t contextualization.visible_status}</span>
      </span>
    }.html_safe
  end

  def icon_for_read(read)
    tag.i(class: "fa#{read ? 'r' : 's'} fa-envelope#{read ? '-open' : ''}")
  end
end
