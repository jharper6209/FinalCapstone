<template>
  <div id="recipe-detail">
      <h1 id="name">{{ recipe.name }}</h1>
      <
          <p class="recipe-title"
      v-for="item in filteredIngredients"
      v-bind:key="item.recipeID">{{ item.ingredientName }}
      </p>
  </div>    
</template>

<script>
export default {
data(){
  return{
    currentIngredient:[],
  }
},
computed:{
recipe(){
    return this.$store.state.recipes.find((f) =>
    f.recipeID === this.$route.params.id
    )},
    filteredSteps(){
    return this.$store.state.directions.filter((step) =>
    step.recipeID === this.$route.params.id
    )},
filteredIngredients() {
      return this.$store.state.ingredients.filter((diet) =>{
        return diet.recipeId === this.$route.params.id
      })
    }
  },
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