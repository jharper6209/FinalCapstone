<template>
  <div class="recipe-detail">
      <h1>{{ recipe.name }}</h1>
      <p> {{ recipe.description }} </p>
      <p> {{ ingreident.name }} </p>
  </div>    
</template>

<script>
export default {
computed:{
recipe(){
    return this.$store.state.dummy.find((f) =>
    f.id === this.$route.params.id
    )}
},
ingreident(){
    return this.$store.state.dummy.ingredients.find((f) =>
    f.id === this.$route.params.id
    )}
}
</script>

<style>

</style>