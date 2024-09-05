<template>
    <div class="main-banner">
      <h1>Amor y Amistad</h1>
      <h2>HASTA -70%</h2>
      <button>COMPRA YA</button>
    </div>
  </template>
  
  <script>
  export default {
    name: 'MainBanner',
  }
  </script>
  
  <style scoped>
  .main-banner {
    background-color: #ffd1dc;
    text-align: center;
    padding: 20px;
  }
  
  h1 {
    color: #ff6b6b;
    font-size: 2.5em;
  }
  
  h2 {
    color: #ff4757;
    font-size: 2em;
  }
  
  button {
    background-color: #ff6b6b;
    color: white;
    border: none;
    padding: 10px 20px;
    font-size: 1.2em;
    cursor: pointer;
  }
  </style>