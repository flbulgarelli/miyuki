module AboutUsHelper
  def about_us_html
    <<~HTML.html_safe
    <section class="exercise-assignment">
      <blockquote>
        <p>
          👋 ¡Hola! ¿Sabías que <a href="https://github.com/flbulgarelli/miyuki"><i class="fa fa-solid fa-snowflake"></i> Miyuki</a> es un proyecto colaborativo y de código abierto? Gracias a Miyuki podés instalar y ejecutar un laboratorio de <a href="https://github.com/mumuki/mumuki-laboratory"><i class="da da-mumuki"></i> Mumuki</a> en tu computadora.
        </p>
        <p>
          🌟 Si estás aprendiendo con este software, te pedimos que le des una estrella a estos proyectos y sigas
          sus novedades.
        </p>
        <p>
          💬 También te esperamos en el canal de <a href="https://discord.gg/Ak4ee7fcSM">Discord de Miyuki</a>.
        </p>
      </blockquote>
    </section>
    HTML
  end
end