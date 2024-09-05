<template>
  <header>
    <!-- Barra superior negra -->
    <div class="top-bar">
      <div class="top-bar-content">
        <!-- Elementos de la barra superior -->
        <a href="#" class="top-bar-item">
          <img src="../assets/icono-camion.png" alt="Icono envío" class="icon">
          <div class="text-group">
            <span class="green-text">Envío gratis en cada pedido</span>
            <span class="subtext">Oferta exclusiva</span>
          </div>
        </a>

        <a href="#" class="top-bar-item">
          <img src="../assets/icono-ajuste-precios.png" alt="Icono ajuste de precios" class="icon">
          <div class="text-group">
            <span class="yellow-text">Ajuste de precios</span>
            <span class="subtext">En un plazo de 30 días</span>
          </div>
        </a>

        <a href="#" class="top-bar-item">
          <img src="../assets/icono-descargar-app.png" alt="Icono app" class="icon">
          <span class="yellow-text">Descarga la app de Temu</span>
        </a>
      </div>
    </div>

    <!-- Barra inferior rosada -->
    <div class="bottom-bar">
      <div class="bottom-bar-content">
        <!-- Logo -->
        <img src="../assets/logo-temu.png" alt="Temu logo" class="logo">

        <!-- Navegación -->
        <nav class="nav-links">
          <div class="masvendidos">
            <a href="#"> 
              <img src="../assets/icono-mas-vendidos.png" alt="Más vendidos" class="icon-small">
              <div class="text-wrapper">
                <span class="hot">HOT</span>
                Más vendidos
              </div>
            </a>
          </div>

          <a href="#">
            <img src="../assets/icono-estrella.png" alt="Icono estrella" class="icon-small"> 5 estrellas
          </a>
          <a href="#">
            <img src="../assets/icono-corazon.png" alt="Icono corazón" class="icon-small"> Amor y Amistad
          </a>
          <a href="#">Recién llegados</a>
          <a href="#">Categorías <span>&#9660;</span></a>
        </nav>

        <!-- Barra de búsqueda -->
        <div class="search-bar">
          <input type="text" placeholder="ropa para mujer">
          <button>
            <img src="../assets/icono-buscar.png" alt="Icono buscar" class="icon-small">
          </button>
        </div>

        <!-- Iconos de usuario, ayuda, idioma y carrito -->
        <a href="#" class="user-icon">
          <img src="../assets/icono-usuario.png" alt="Icono usuario" class="icon">
          <span>Pedidos y cuenta</span>
        </a>

        <a href="#" class="help-icon">
          <img src="../assets/icono-ayuda.png" alt="Icono ayuda" class="icon">
          <span>Ayuda</span>
        </a>
        
        <a href="#" class="language-icon">
          <img src="../assets/icono-colombia.png" alt="Bandera Colombia" class="icon">
          <span>ES</span> 
        </a>

        <a href="#" class="cart-icon">
          <img src="../assets/icono-carro-compras.png" alt="Icono carrito" class="icon">
        </a> 
      </div>
    </div>
  </header>
</template>

<script>
export default {
  name: 'MainHeader',
}
</script>

<style scoped>
header {
  display: flex;
  flex-direction: column;
}

.top-bar {
  background-color: #0a0a0a;
  color: #fff;
  display: flex;
  justify-content: center;
  padding: 10px 0; 
  font-size: 0.9em; 
  width: 100%;
  
  
}

.top-bar-content, .bottom-bar-content {
  display: flex;
  justify-content: space-between;
  align-items: center;
  width: 100%;
  max-width: 1200px;
  margin: 0 auto;
  
}

.top-bar-item {
  display: flex;
  align-items: center;
  text-decoration: none;
  color: #fff;
  margin-right: 20px;
  margin-left: 10px;
  
}

.text-group {
  display: flex;
  flex-direction: column;
}

.icon {
  height: 30px;
  margin-right: 10px;
  
}

.green-text, .yellow-text {
  font-weight: bold;
  line-height: 1.2;
}

.green-text { color: #A9F8A7; }
.yellow-text { color: #E8E478; }

.subtext { 
  color: #999; 
  font-size: 0.9em;
  line-height: 1.2; 
}

.bottom-bar {
  background-color: #F5657F;
  width: 100%;
  display: flex;
  justify-content: center;
  padding: 10px 0;
  font-size: 0.9em; 
}

.logo { 
  height: 50px;
  margin-right: 3px;
}

.nav-links {
  display: flex;
  gap: 15px;
  align-items: center;
  flex-grow: 1;
}

.nav-links a {
  display: flex;
  align-items: center;
  color: #fff;
  text-decoration: none;
  font-size: 0.9em;
  white-space: nowrap;
}

.masvendidos a {
  position: relative;
}

.text-wrapper {
  display: flex;
  flex-direction: column;
  align-items: flex-start;
}

.hot {
  position: absolute;
  top: -15px;
  left: 50%;
  transform: translateX(80%);
  background-color: #f57d05;
  color: #ffffff;
  font-weight: bold;
  font-size: 0.8em;
  padding: 2px 4px;
  border-radius: 3px;
  white-space: nowrap;
}

.icon-small {
  height: 18px;
  margin-right: 5px;
  
}

.search-bar {
  display: flex;
  align-items: center;
  background-color: #fff;
  border-radius: 20px;
  overflow: hidden;
  flex-grow: 1; 
  margin: 5px; 
}

.search-bar input {
  border: none;
  padding: 10px 15px;
  font-size: 0.9em;
  width: 100%;
  outline: none;
}

.search-bar button {
  background-color: #000;
  border: none;
  padding: 10px;
  cursor: pointer;
}

.user-icon, .help-icon, .language-icon, .cart-icon {
  display: flex;
  align-items: center;
  text-decoration: none;
  color: #fff;
  margin-left: 8px;
  margin-right: 0;
  font-size: 0.9em;
  
  
}

.user-icon span, .help-icon span, .language-icon span {
  margin-left:0px;
 
}
</style>