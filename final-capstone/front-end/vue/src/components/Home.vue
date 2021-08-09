<template>
    <div
      class="card-container"
    >
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
