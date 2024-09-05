<template>
    <div class="product-grid">
      <div v-for="product in products" :key="product.id" class="product-card">
        <img :src="product.image" :alt="product.name" />
        <h3>{{ product.name }}</h3>
        <p>{{ product.price }}</p>
        <button>Agregar al carrito</button>
      </div>
    </div>
  </template>
  
  <script>
  export default {
    name: 'ProductGrid',
    data() {
      return {
        products: [
          { id: 1, name: 'Auriculares inalámbricos', price: '$18.877', image: '/api/placeholder/200/200' },
          
          { id: 2, name: 'Escurridor de platos', price: '$201.598', image: '/api/placeholder/200/200' },
          { id: 3, name: 'Chaqueta Elegante', price: '$75.929', image: '/api/placeholder/200/200' },
          { id: 4, name: 'Reloj inteligente', price: '$39.087', image: '/api/placeholder/200/200' },
          { id: 5, name: 'Camiseta estampada', price: '$46.395', image: '/api/placeholder/200/200' },
        ]
      }
    }
  }
  </script>
  
  <style scoped>
  .product-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
    gap: 20px;
    padding: 20px;
  }
  
  .product-card {
    border: 1px solid #ddd;
    padding: 10px;
    text-align: center;
  }
  
  .product-card img {
    max-width: 100%;
    height: auto;
  }
  
  .product-card button {
    background-color: #ff6b6b;
    color: white;
    border: none;
    padding: 5px 10px;
    cursor: pointer;
  }
  </style>