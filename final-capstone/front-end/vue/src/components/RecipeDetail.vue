<template>
  <div id="recipe-detail">
    <h1 id="name">{{ recipe.name }}</h1>
    <p
      class="recipe-title"
      v-for="item in filteredIngredients"
      v-bind:key="item.recipeId"
    >
      {{ item.ingredientName }}
    </p>
    <p
      class="recipe-title"
      v-for="item in currentStep"
      v-bind:key="item.recipeID"
    >{{ item.stepDirections }}</p>
  </div>
</template>

<script>
import Steps from '../services/MealService'
export default {
  data() {
    return {
      currentStep: [],
    };
  },
  created(){
Steps.getDirections(this.$route.params.id)
.then(response=>{
  console.log(this.$route.params.id)
  this.currentStep = response.data
})
  },
  computed: {
    recipe() {
      return this.$store.state.recipes.find(
        (f) => f.recipeID === this.$route.params.id
      );
    },
    filteredIngredients() {
      return this.$store.state.ingredients.filter((diet) => {
        return diet.recipeId === this.$route.params.id;
      });
    },
        steps() {
      return this.currentStep.filter((diet) => {
        return currentStep.stepDirections
      });
    },
  },
};
</script>

<style>
#name,
#description,
#ingredients {
  font-family: "Open Sans", sans-serif;
  color: white;
  margin-right: 50px;
}

#description,
#ingredients {
  font-size: 1.2em;
}
</style>
