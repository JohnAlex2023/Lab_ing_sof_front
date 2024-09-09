<script>
import { RouterLink, RouterView } from 'vue-router'
import MainHeader from './components/MainHeader.vue'
import MainBanner from './components/MainBanner.vue'
import ProductGrid from './components/ProductGrid.vue'
import TheFooter from './components/TheFooter.vue'

export default {
  name: 'App',
  components: {
    MainHeader,
    MainBanner,
    ProductGrid,
    TheFooter
  }
}
</script>

<template>
  <div id="app">
    <MainHeader />
    <MainBanner />
    <ProductGrid />
    <TheFooter />
  </div>
</template>


<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  color: #2c3e50;
}
</style>
