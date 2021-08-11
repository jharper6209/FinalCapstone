<template>
<<<<<<< HEAD
  <div class="recipe-detail">
      <h1>{{ this.$store.state.currentDummy.title }}</h1>
      <p> {{ this.$store.state.currentDummy.description }} </p>
=======
  <div id="recipe-detail">
      <!-- <h1 id="name">{{ recipe.name }}</h1> -->
          <p class="recipe-title"
      v-for="item in filteredRecipes"
      v-bind:key="item.recipeID">{{ item.name }}
      </p>
>>>>>>> test
  </div>    
</template>

<script>
export default {
data(){
  return{
    currentIngredient:[],
  }
},
created()
{
  const currentRecipe = this.$route.params.id
  this.$store.commit("SET_CURRENT_RECIPE", recipe)
}
}
</script>

<style>
#name, #description, #ingredients{
  font-family: 'Open Sans', sans-serif;
  color: white;
  margin-right: 50px;
}

#description, #ingredients{
    font-size: 1.2em;
}
</style>