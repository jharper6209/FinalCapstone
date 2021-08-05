<template>
<div>
  <p>What is going on here?!</p>
  <p>Welcome to the Key Team Structly Equal! Here you will build a meal plan based on your dietary needs.
       We are currently under construction so please bare with our growing pains.
       Our team is focused on bringing you the best experience.</p>
       <p>OK so what is going on?</p>
       <router-link
      class="card"
      v-bind:to="{ name: 'recipe', params: { id: card.recipeId } }"
    >
      <img class="plate" src="../assests/plate.png" />
      <img class="recipe-image" v-bind:src="card.image" />
      <h4 class="recipe-title">{{ card.recipeName }}</h4>
    </router-link>
    <p>Here you can see one of our recipes! When clicked it will bring up the recipe details and instructions!</p>
    <p>Cool what about the button at the bottom of the page?</p>
    <p>This will add all the ingredidents to your Grocery List where you can print or use the checklist functionality!</p>
    <p>All these recipes are great but I only want to see a specific one</p>
    <p>Coming soon we will have a larger list of recipes for you to look at and try. Once we have our library
        built you will be able to browse and look at each recipe.</p>

</div>
</template>

<script>
export default {

}
</script>

<style>

</style>