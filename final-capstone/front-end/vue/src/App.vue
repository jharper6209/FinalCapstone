<template>
  <div id="app">
      <div class="nav-buttons" v-if="$store.state.token !=''">
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

@font-face{
      font-family: "PencilPete";
      src: local("PencilPete"),
      url(../src/assests/PencilpeteFont-2eE3.ttf) format("truetype");
}

body{
  color: white;
  background-color: maroon;
  height: 100vh;
  box-sizing: border-box;
}

#app{
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