<template>
    <div
      class="card-container"
    >
    <h1> What We Do </h1>
    <h2> Here you can see our recipes! When clicked it will bring up the recipe details and instructions! From there you can choose your recipes and add them to your recipes. After you choose your recipes we will generate a shopping list for you. </h2>
    <recipe-card
    v-bind:card="card"
     v-for="card in $store.state.dummy"
      v-bind:key="card.id"
    />
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
.card-container {
  display: flex;
  justify-content: space-evenly;
  flex-wrap: wrap;
}

</style>
