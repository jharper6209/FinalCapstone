<template>
  <div id="recipe-detail">
      <h1 id="name">{{ recipe.name }}</h1>
      <p id="description"> {{ recipe.description }} </p>
      <p id="ingredients"> {{ recipe.ingredients.name }} </p>
  </div>    
</template>

<script>
export default {
computed:{
recipe(){
    return this.$store.state.dummy.find((f) =>
    f.recipeID === this.$route.params.id
    )},
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