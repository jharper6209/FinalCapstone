<template>
  <div id="app">
      <div class="nav-buttons" v-if={}>
      <navigation/>
      </div>
      <div class="router-views">
    <router-view />
      </div>
  </div>
</template>

<script>
import Navigation from "../src/components/Navigation";
export default {
    components: { 
      Navigation 
  },}
</script>

<style>
#app{
  height: 100vh;
  display: grid;
  grid-template-columns: 6fr 1fr;
  grid-template-areas: "page nav";
}


.router-views{
  grid-area: page;
}

.nav-buttons{
  grid-area: nav;
}



</style>