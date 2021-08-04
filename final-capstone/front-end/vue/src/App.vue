<template>
  <div id="app">
      <!-- <router-link v-bind:to="{ name: 'home' }">Home</router-link>&nbsp;|&nbsp;
      <router-link v-bind:to="{ name: 'logout' }" v-if="$store.state.token != ''">Logout</router-link> -->
      <div class="nav-buttons">
      <navigation/>
      </div>
      <div class="router-views">
    <router-view />
    </div>
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
  grid-template-areas: "page nav"
}

.nav-buttons{
  grid-area: nav;
}

.router-views{
  grid-area: page;
}
</style>