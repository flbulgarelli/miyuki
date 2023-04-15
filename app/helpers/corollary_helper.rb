module CorollaryHelper
  def corollary_box(with_corollary, trailing_boxes = false)
    if with_corollary.corollary.present?
      %Q{
        <div class="#{last_box_class trailing_boxes}">
          <p>#{with_corollary.corollary_html}</p>
          <p>#{donate_html}<p>
        </div>
      }.html_safe
    end
  end
end