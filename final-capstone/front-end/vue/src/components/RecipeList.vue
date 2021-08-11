<template>
  <form @submit.prevent="addGroceriesToList">
        <h1> What We Do </h1>
    <h2> Here you can see our recipes! When clicked it will bring up the recipe details and instructions! From there you can choose your recipes and add them to your recipes. After you choose your recipes we will generate a shopping list for you. </h2>
    <second-nav/>
    <div
      class="form-group form-check"
      v-for="recipe in filteredRecipes"
      v-bind:key="recipe.recipeID"
    >
      <recipe-card v-bind:recipe="recipe" v-bind:key="recipe.recipeID" />
      <label class="form-check-label" :for="recipe.recipeID">{{ recipe.name }}</label>
      <input
        type="checkbox"
        v-model="checkedRecipe"
        :id="recipe.recipeID"
        :value="recipe"
      />

    </div>
    <div class="form-group">
      <button class="btn btn-primary">Submit</button>
      <!-- <img src="../assests/whatsfordinner.png" id="background" /> -->
    </div>
  </form>
</template>

<script>
import MealService from '../services/MealService'
import RecipeCard from "./RecipeCard.vue";
import SecondNav from './SecondNav.vue';
export default {
  components: {
    RecipeCard,
    SecondNav,
  },
  data() {
    return {
      checkedRecipe: [],
    };
  },
  created(){
    this.retrieveRecipes();
    this.retrieveIngredients();
  },
  computed:{
    filteredRecipes() {
      return this.$store.state.recipes.filter((diet) =>{
        if(this.$store.state.filter != 0){
        return diet.categoryId === this.$store.state.filter;
        }
        return diet.categoryId;
      })
    }
  },
  methods: {
        retrieveIngredients() {
      MealService.getIngredients().then((response) => {
        this.$store.commit("SET_INGREIDENTS", response.data);
      })
        },
    updateFilter(num){
      this.$store.commit("UPDATE_FILTER", parseInt(num))
    },
    retrieveRecipes(){
      MealService.getRecipes()
      .then(response =>{
        this.$store.commit("SET_RECIPES", response.data);
      })
    },
    addGroceriesToList() {
        this.$store.commit("ADD_GROCERIES", this.checkedRecipe);
      this.resetChecked();
    },
    resetChecked() {
      this.checkedFood = [];
    },
    
  },
};
</script>

<style scoped>

.recipe-list {
  display: flex;
  align-items: center;
  justify-content: flex-start;
  flex-direction: column;
  height: 100vh;
  width: 80vw;
  z-index: 1;
}

#background{
  z-index: -1;
  position: absolute;
  top: 0;
  left: 0;
  opacity: 35%;
}

#header{
  font-size: 50px;
  font-family: "Berkshire Swash", cursive;
  color: yellow;
  text-shadow: -1px -1px 0 #000, 1px -1px 0 #000, -1px 1px 0 #000,
    1px 1px 0 #000;
}




</style>
