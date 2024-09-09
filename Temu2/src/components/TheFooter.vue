<template>
  <footer class="bg-dark text-white py-4">
    <div class="container">
      <div class="row">
        <div class="col-md-3">
          <h5>Información de la empresa</h5>
          <ul class="list-unstyled">
            <li><a href="#">Acerca de Temu</a></li>
            <li><a href="#">Temu - ¡Entre Todos, Bajamos Precios!</a></li>
            <li><a href="#">Afiliado e influencer: gana comisiones</a></li>
            <li><a href="#">Contáctanos</a></li>
            <li><a href="#">Carreras profesionales</a></li>
            <li><a href="#">Prensa</a></li>
            <li><a href="#">Programa de plantación de árboles Temu</a></li>
          </ul>
        </div>
        <div class="col-md-3">
          <h5>Atención al cliente</h5>
          <ul class="list-unstyled">
            <li><a href="#">Política de devolución y reembolso</a></li>
            <li><a href="#">Política de propiedad intelectual</a></li>
            <li><a href="#">Política de envíos</a></li>
            <li><a href="#">Reportar actividad sospechosa</a></li>
          </ul>
        </div>
        <div class="col-md-3">
          <h5>Ayuda</h5>
          <ul class="list-unstyled">
            <li><a href="#">Centro de ayuda y preguntas frecuentes</a></li>
            <li><a href="#">Centro de seguridad</a></li>
            <li><a href="#">Protección de compras de Temu</a></li>
            <li><a href="#">Asóciate a Temu</a></li>
          </ul>
        </div>
        <div class="col-md-3">
          <h5>Descarga la App de Temu</h5>
          <ul class="list-unstyled app-features">
            <li><i class="icon-alert"></i> Alertas de baja de precios</li>
            <li><i class="icon-payment"></i> Pago más rápido y seguro</li>
            <li><i class="icon-offer"></i> Ofertas exclusivas</li>
          </ul>
          <div class="app-buttons mt-2">
            <a href="#" class="btn btn-outline-light mb-2 d-block">
              <i class="icon-apple"></i> Descargar en App Store
            </a>
            <a href="#" class="btn btn-outline-light d-block">
              <i class="icon-google-play"></i> Descargar en Google Play
            </a>
          </div>
        </div>
      </div>
      
      <div class="mt-4">
        <h5>Conectar con Temu</h5>
        <div class="social-icons">
          <a href="#"><i class="icon-instagram"></i></a>
          <a href="#"><i class="icon-facebook"></i></a>
          <a href="#"><i class="icon-twitter"></i></a>
          <a href="#"><i class="icon-tiktok"></i></a>
          <a href="#"><i class="icon-youtube"></i></a>
          <a href="#"><i class="icon-pinterest"></i></a>
        </div>
      </div>

      <div class="mt-4">
        <h5>Certificación de seguridad</h5>
        <div class="security-icons">
          <img src="" alt="PCI DSS" />
          <img src="" alt="Visa" />
          <img src="" alt="Mastercard" />
          <img src="" alt="ID Check" />
          <img src="" alt="SafeKey" />
          <img src="" alt="JCB" />
          <img src="" alt="TrustedSite" />
        </div>
      </div>

      <div class="mt-4">
        <h5>Aceptamos</h5>
        <div class="payment-icons">
          <img src="" alt="Visa" />
          <img src="" alt="Mastercard" />
          <img src="" alt="Codensa" />
          <img src="" alt="Maestro" />
          <img src="" alt="American Express" />
          <img src="" alt="Discover" />
          <img src="" alt="Bancolombia" />
          <img src="" alt="JCB" />
          <img src="" alt="Apple Pay" />
          <img src="" alt="Google Pay" />
        </div>
      </div>

      <div class="footer-bottom mt-4 pt-3 border-top">
        <p>&copy; 2024 WhaleCo Inc.</p>
        <p>
          <a href="#">Términos de uso</a> |
          <a href="#">Política de privacidad</a> |
          <a href="#">Tus preferencias de privacidad</a> |
          <a href="#">Gestión de anuncios</a>
        </p>
      </div>
    </div>
  </footer>
</template>

<script>
export default {
  name: 'TheFooter',
}
</script>

<style scoped>
footer {
  background-color: #222;
  color: #fff;
  font-size: 14px;
}

h5 {
  font-size: 16px;
  margin-bottom: 15px;
}

a {
  color: #fff;
  text-decoration: none;
}

a:hover {
  text-decoration: underline;
}

.app-features li {
  margin-bottom: 10px;
}

.app-buttons .btn {
  text-align: left;
  padding: 8px 12px;
  font-size: 14px;
}

.social-icons a {
  margin-right: 15px;
  font-size: 20px;
}

.security-icons img, .payment-icons img {
  height: 30px;
  margin-right: 10px;
  margin-bottom: 10px;
}

.footer-bottom {
  font-size: 12px;
}

.footer-bottom a {
  color: #ccc;
}
</style>