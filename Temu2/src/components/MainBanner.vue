<template>
  <div class="main-banner" @click="handleClick">
    <!-- Aquí puedes agregar texto u otros elementos si lo deseas -->
  </div>
</template>

<script>
export default {
  name: 'MainBanner',
  methods: {
    handleClick() {
      // Aquí puedes manejar el clic en el botón
      alert('Imagen clickeada!');
    }
  }
}
</script>

<style scoped>
.main-banner {
  background-image: url('@/assets/amoryamistad.png'); /* Ajusta la ruta si es necesario */
  background-size: contain; /* Ajusta el tamaño de la imagen para que se ajuste al contenedor */
  background-repeat: no-repeat; /* Evita que la imagen se repita */
  background-position: center; /* Centra la imagen en el contenedor */
  width: 100%;
  height: 50vh; /* Ajusta la altura según tus necesidades, por ejemplo, 50vh para la mitad de la pantalla */
  cursor: pointer;
  border: none;
}
</style>
