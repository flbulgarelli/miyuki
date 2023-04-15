module DonationHelper
  def donate_html
    <<~HTML.html_safe
    <p>
      <i class="da da-mumuki"></i> ¿Estás aprendiendo con Mumuki?
      <br>
      ☕ ¡Convidanos <a href="https://cafecito.app/MumukiOrg">un cafecito</a> para poder seguir desarrollando la plataforma!
    </p>
    HTML
  end
end