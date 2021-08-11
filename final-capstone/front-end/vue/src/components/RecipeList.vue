<template>
  <form @submit.prevent="addGroceriesToList">

    <h1 id="listHeader">All Recipes List</h1>
    <h2 id="listDescription">
      Here you can see our recipes! When clicked it will bring up the recipe
      details and instructions! From there you can choose your recipes and add
      them to your recipes. After you choose your recipes we will generate a
      shopping list for you.
    </h2>
        <div class="buttons">
    <button class="link" v-on:click="updateFilter(0)"> Clear Filter </button>
    <button class="link" v-on:click="updateFilter(1)"> <img src="../assests/gf.png" class="icon"/> Gluten Free </button>
    <button class="link" v-on:click="updateFilter(2)"> <img src="../assests/keto.png" class="icon"/> Keto </button>
    <button class="link" v-on:click="updateFilter(4)"><img src="../assests/vegetarian.png" class="icon"/> Vegatarian </button>
    <button class="link" v-on:click="updateFilter(5)"><img src="../assests/vegan.png" class="icon"/> Vegan </button>
    </div>
    <div class="recipeWrap">
      <div
        class="form-group form-check"
        v-for="recipe in filteredRecipes"
        v-bind:key="recipe.recipeID"
      >
        <recipe-card v-bind:recipe="recipe" v-bind:key="recipe.recipeID" />
        <div>
                          <label class="form-check-label" :for="recipe.recipeID">Add to your list?     </label>
        <input
          type="checkbox"
          v-model="checkedRecipe"
          :id="recipe.recipeID"
          :value="recipe"
        />
        </div>
      </div>
    </div>
    <div class="form-group">

      <!-- <img src="../assests/whatsfordinner.png" id="background" /> -->
    </div>
  </form>
</template>

<script>
import MealService from "../services/MealService";
import RecipeCard from "./RecipeCard.vue";
import SecondNav from "./SecondNav.vue";
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
  created() {
    this.retrieveRecipes();
    this.retrieveIngredients();
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
      this.resetChecked();
    },
    resetChecked() {
      this.checkedFood = [];
    },
  },
};
</script>

<style scoped>
.buttons{
  display: flex;
  position: sticky;
  top:0;
  background-color: maroon;
}
.form-group{
  display: flex;
  flex-direction: column;
  align-items: center;
}

.form-check-label{
      font-family: 'Open Sans', sans-serif;
  font-size: 1.5rem;
}

#listHeader {
    font-family: 'Open Sans', sans-serif;
    font-size: 3rem;
  font-family: "Berkshire Swash", cursive;
  text-shadow: -1px -1px 0 #000, 1px -1px 0 #000, -1px 1px 0 #000,
    1px 1px 0 #000;
}

#listDescription{
    font-family: 'Open Sans', sans-serif;
    font-size: 1.5rem;
}

.recipeWrap {
  display: flex;
  align-content: row;
  flex-wrap: wrap;
}
.card {
  display: flex;
  width: 300px;
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

#background {
  z-index: -1;
  position: absolute;
  top: 0;
  left: 0;
  opacity: 35%;
}


</style>
