module DonationHelper
  def donate_html
    <<~HTML.html_safe
    <p>
      <i class="da da-mumuki"></i> ¿Estás aprendiendo con Mumuki?
      <br>
      ⭐ Danos <a href="https://github.com/flbulgarelli/miyuki">una estrella en Github</a>
    </p>
    HTML
  end
end