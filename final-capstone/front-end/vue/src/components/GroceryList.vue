<template>
<div class="grocery-list">
  <h1>Your List of Groceries</h1>
    <p class="recipe-title"
      v-for="ingredient in $store.state.ingredientList"
      v-bind:key="ingredient.id">{{ ingredient }}
      </p>
  </div>
</template>

<script>

</script>

<style scoped>
.grocery-list{
  display: flex;
  align-items: center;
  flex-direction: column;
  height: 100vh;
}

h1{
  font-size:50px;
  font-family: "Berkshire Swash", cursive;
  display: flex;
   color:yellow;
   text-shadow: -1px -1px 0 #000, 1px -1px 0 #000, -1px 1px 0 #000, 1px 1px 0 #000;
   }
</style>