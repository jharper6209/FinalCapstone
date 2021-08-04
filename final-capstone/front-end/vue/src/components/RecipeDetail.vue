<template>
  <div class="recipe-detail">
      <h1>{{ this.$store.state.currentDummy.title }}</h1>
      <p> {{ this.$store.state.currentDummy.description }} </p>
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
created()
{
  const currentRecipe = this.$route.params.id
  this.$store.commit("SET_CURRENT_RECIPE", recipe)
}
}
</script>

<style>

</style>