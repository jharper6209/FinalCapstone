<template>
  <form @submit.prevent="addGroceriesToList">

    <h1 id="listHeader">All Recipes</h1>
    <h2 id="listDescription">
      Here you can see all of the recipes we have to share! <br> <br>
    </h2>
    <h3> Choose your dietary restriction from below: </h3> 
        <div class="buttons">
         
    <button class="link" v-on:click="updateFilter(0)"> Clear Filter </button>
    <button class="link" v-on:click="updateFilter(1)"><img src="../assests/gf.png" class="icon"/> Gluten Free </button>
    <button class="link" v-on:click="updateFilter(2)"><img src="../assests/keto.png" class="icon"/> Keto </button>
    <button class="link" v-on:click="updateFilter(4)"><img src="../assests/vegetarian.png" class="icon"/> Vegatarian </button>
    <button class="link" v-on:click="updateFilter(5)"><img src="../assests/vegan.png" class="icon"/> Vegan </button>
    </div>
    <h3> Click a plate to view the recipe details and instructions. See one you like? You can add it to your "My Recipes" list by selecting "add to your list" and hitting "submit".</h3>
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
<button class="btn btn-primary">Submit</button>
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
  
  

  margin-bottom: 100px;
    justify-content: center;
}

.form-group{
  display: flex;
  flex-direction: column;
  align-items: center;
}

.form-check-label{
      font-family: "Berkshire Swash", cursive; 
  font-size: 1.5rem;
  border-bottom: 30px;
}

#listHeader {
    font-family: "Berkshire Swash", cursive; 
    font-size: 3rem;
  font-family: "Berkshire Swash", cursive;
  text-shadow: -1px -1px 0 #000, 1px -1px 0 #000, -1px 1px 0 #000,
    1px 1px 0 #000;
    text-align: center;
}

#listDescription{
    font-family: "Berkshire Swash", cursive; 
    font-size: 1.5rem;
}

.recipeWrap {
  display: flex;
  justify-content: center;
  flex-wrap: wrap;
}
.card {
  display: flex;
  width: 300px;
  height: 400px;
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
h3{
  margin:0;
}
h2{
  text-align: center;
}


</style>
