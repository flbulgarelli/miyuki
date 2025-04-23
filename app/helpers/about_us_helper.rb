module AboutUsHelper
  def about_us_html
    <<~HTML.html_safe
    <section class="exercise-assignment">
      <blockquote>
        #{t :about_miyuki}
      </blockquote>
    </section>
    HTML
  end
end