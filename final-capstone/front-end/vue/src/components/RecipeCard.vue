<template>
  <div>
    <router-link
      class="card"
      v-bind:to="{ name: 'recipe', params: { id: recipe.recipeID } }"
    >
      <img class="plate" src="../assests/plate.png" />
      <img class="recipe-image" v-bind:src="recipe.image" />
    </router-link>    
    <p class="recipe-title">{{ recipe.name }}</p>
  </div>
</template>

<script>
export default {    
  props: ["recipe"],
  }
</script>

<style scoped>
#labelforbox{
    color: white;
    font-size: 20px;
}

.card {
  display: flex;
  flex-direction: column;
  justify-content: center;
  border-radius: 50%;
  margin-top: 25px;
  width: 300px;
  height: 300px;
  border-style: solid;
  border-color: rgb(255, 255, 255, 0);
  border-width: 5px;
}

.plate {
  position: absolute;
  width: 300px;
  height: 300px;
  z-index: -1;
}

.card:hover {
  border-style: solid;
  border-color: rgba(255, 255, 0, 0.5);
  border-width: 5px;
}

.recipe-image {
  display: flex;
  margin-left: auto;
  margin-right: auto;
  margin-top: 60px;
  margin-bottom: 50px;
  border-radius: 50%;
  height: 150px;
}

.recipe-title {
  text-align: center;
  color: #ffffff;
  font-size: 1.5rem;
  font-family: "Kalam", cursive;
  text-shadow: -1px -1px 0 #000, 1px -1px 0 #000, -1px 1px 0 #000,
    1px 1px 0 #000;
}
</style>
