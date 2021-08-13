<template>
  <div class="recipe-detail">
    
    <h1 class="detail-name">
      <img class="detail-image" v-bind:src="recipe.image"/>
      {{ recipe.name }}
      </h1>
      <div class="ingredient-container">
          <p
      class="detail-ingredients"
      v-for="item in filteredIngredients"
      v-bind:key="item.id"
    >
      {{ item.ingredientName }}
    </p>
    </div>
    <div class="detail-step">
          <ol>
    <li
      class="recipe-title"
      v-for="step in currentStep"
      v-bind:key="step.id"
    >{{ step.stepDirections }}</li>
    </ol>
</div>
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
  },
}
</script>

<style>
.detail-step{
display: flex;
flex-direction: column;
font-size: 1.5rem;
margin-top: 0rem;
}

.detail-image{
  border-radius: 50%;
  width: 200px
}

.ingredient-container{
  display: flex;
  flex-direction: column;

  font-size: 1.5rem;
}

.detail-ingredients{
  display: flex;
}

.recipe-title{
  margin:0.1rem;
}

.detail-name,
.description,
.ingredients {
  font-family: "Open Sans", sans-serif;
  color: white;
  margin-right: 50px;
}

.description,
.ingredients {
  font-size: 1.2em;
}

.detail-ingredients{
    margin: 0rem;
}
</style>
