<template>
  <div class="theHomeDiv">
    <div class="header">
      <h1>Welcome Back, Marty!</h1>
    </div>
    <div
      class="card-container"
    >
    <recipe-card
    v-bind:card="card"
     v-for="card in $store.state.dummy"
      v-bind:key="card.id"
    />
    </div>
  </div>
</template>

<script>
import RecipeCard from './RecipeCard.vue';
export default {
  components: { 
      RecipeCard 
  },};
</script>

<style scoped>
.header {
  font-family: "Berkshire Swash", cursive;
  display: flex;
  justify-content: center;
  font-size: 30px;
  color: white;
}

.card-container {
  display: flex;
  justify-content: space-evenly;
  flex-wrap: wrap;
}
</style>
