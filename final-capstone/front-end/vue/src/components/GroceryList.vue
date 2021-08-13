<template>
<div class="grocery-list">
  <h1>Your List of Groceries</h1>
          <p
      class="detail-ingredients"
      v-for="item in filteredIngredients"
      v-bind:key="item.id"
    >
      {{ item.ingredientName }}
    </p>
  </div>
</template>

<script>
export default{
methods:{
filteredIngredients() {
      return this.$store.state.ingredients.filter((diet) => {
        return diet.recipeId === this.$store.state.ingredientList.recipeID;
      });
    },
  },
}
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