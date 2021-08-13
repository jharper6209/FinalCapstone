<template>
<div id="recipeList">
    <h1 id="recipe-header">All Recipes</h1>
    <h2 id="recipe-description">
      Here you can see all of the recipes we have to share!
    </h2>
        <div class="recipe-instructions">
    <h3 id="recipe-choices">Choose your dietary restriction from below:</h3>
        </div>
  <form id="recipe-buttons" @submit.prevent="addGroceriesToList">
      <button class="recipe-link" v-on:click="updateFilter(0)">Clear Filter</button>
      <button class="recipe-link" v-on:click="updateFilter(1)">
        <img src="../assests/gf.png" class="diet-icon"/>Gluten Free</button>
      <button class="recipe-link" v-on:click="updateFilter(2)">
        <img src="../assests/keto.png" class="diet-icon"/>Ketogenic</button>
      <button class="recipe-link" v-on:click="updateFilter(4)">
        <img src="../assests/vegetarian.png" class="diet-icon"/>Vegetarian</button>
      <button class="recipe-link" v-on:click="updateFilter(5)">
        <img src="../assests/vegan.png" class="diet-icon"/>Vegan</button>
              <button class="recipe-link" v-show="checkedRecipe != ''">Save</button>
  </form>
    <div class="recipe-instructions">
      <h3 id="recipe-details">
        Click a plate to view the recipe details and instructions. See one you
        like? You can add it to your "My Recipes" list by selecting "Add o Your
        List" and hitting "Save Recipes".
      </h3>
    </div>
    <div id="recipe-flex-wrap">
      <div
        class="single-recipe"
        v-for="get in filteredRecipes"
        v-bind:key="get.recipeID"
      >
        <recipe-card v-bind:getCard="get" v-bind:key="get.recipeID" />
        <div>
          <label class="form-check-label" :for="get.recipeID">
            Add to Your List?
          </label>
          <input
            type="checkbox"
            v-model="checkedRecipe"
            :id="get.recipeID"
            :value="get"
          />
        </div>
      </div>
    </div>
</div>

</template>

<script>
import MealService from "../services/MealService";
import RecipeCard from "./RecipeCard.vue";
export default {
  components: {
    RecipeCard,
  },
  data() {
    return {
      checkedRecipe: [],
    };
  },
  created() {
    this.retrieveRecipes();
    this.retrieveIngredients();
    this.retrieveDirections();
  },
  computed: {
    filteredRecipes() {
      return this.$store.state.recipes.filter((diet) => {
        if (this.$store.state.filter != 0) {
          return diet.categoryId === this.$store.state.filter;
        }
        return diet.categoryId;
      });
    },
  },
  methods: {
    retrieveIngredients() {
      MealService.getIngredients().then((response) => {
        this.$store.commit("SET_INGREIDENTS", response.data);
      });
    },
    updateFilter(num) {
      this.$store.commit("UPDATE_FILTER", parseInt(num));
    },
    retrieveRecipes() {
      MealService.getRecipes().then((response) => {
        this.$store.commit("SET_RECIPES", response.data);
      });
    },

    addGroceriesToList() {
      this.$store.commit("ADD_GROCERIES", this.checkedRecipe);
      this.scrollToTop()
      this.resetChecked();
    },
    resetChecked() {
      this.checkedFood = [];
    },
    scrollToTop(){
      document.body.scrollTop = 0;
      document.documentElement.scrollTop = 0;
    },
  },
};
</script>

<style scoped>
#recipeList{
  text-shadow: -1px -1px 0 #000, 1px -1px 0 #000, -1px 1px 0 #000,
    1px 1px 0 #000;
}
#recipe-header {
  font-family: "Berkshire Swash", cursive;
  font-size: 4rem;
  text-align: center;
  text-shadow:none;
}

#recipe-description {
  font-family: "Open Sans", cursive;
  font-size: 1.5rem;
    text-align: center;
  margin-bottom: 80px;
}

.recipe-instructions {
  display: flex;
  justify-content: center;
  font-family: "Open Sans", cursive;
}

#recipe-choices{
  display: flex;
  width:58vw;
  margin-bottom:0rem;
}

#recipe-buttons{
  display: flex;
  position: sticky;
  top: 0;
  background-color: none;
  justify-content: center;
}

.recipe-link{
  font-family: "Allerta Stencil", sans-serif;
  display: flex;
  color: #800000;
  justify-content: center;
  align-items: center;
  font-size: 1.2rem;
  background-color: white;
  height: 3rem;
  width: 8.9rem;
  border-radius: 10px;
  align-content: center;
  text-decoration: none;
  border-style: solid;
  border-width: 0.1rem;
  border-color:#000;
  margin-left:0.3rem;
  margin-right:0.3rem;
}

.diet-icon {
  height: 1.6rem;
  margin-right: 0.3rem;
}

#recipe-details{
  margin-bottom: 3rem;
  margin-top: 1rem;
      width: 58vw;
      text-align:justify;
}


.single-recipe{
  display: flex;
  flex-direction: column;
  align-items: center;
}

.form-check-label {
  font-family: "Berkshire Swash", cursive;
  font-size: 1.5rem;
  border-bottom: 30px;
}

#recipe-flex-wrap{
  display: flex;
  justify-content: center;
  flex-wrap: wrap;
}

.recipe-list {
  display: flex;
  align-items: center;
  justify-content: flex-start;
  flex-direction: row;
  height: 100vh;
  width: 80vw;
  z-index: 1;
}

</style>
