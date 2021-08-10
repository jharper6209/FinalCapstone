<template>
  <form @submit.prevent="addGroceriesToList">
        <h1> What We Do </h1>
    <h2> Here you can see our recipes! When clicked it will bring up the recipe details and instructions! From there you can choose your recipes and add them to your recipes. After you choose your recipes we will generate a shopping list for you. </h2>
    <div
      class="form-group form-check"
      v-for="item in $store.state.dummy"
      v-bind:key="item.recipeID"
    >
      <recipe-card v-bind:card="item" v-bind:key="item.recipeID" />
      <label class="form-check-label" :for="item.recipeID">{{ item.name }}</label>
      <input
        type="checkbox"
        v-model="checkedFood"
        :id="item.name"
        :value="item"
      />

    </div>
    <div class="form-group">
      <button class="btn btn-primary">Submit</button>
      <img src="../assests/whatsfordinner.png" id="background" />
    </div>
  </form>
</template>

<script>
import RecipeCard from "./RecipeCard.vue";
import MealService from '../services/MealService'
export default {
  components: {
    RecipeCard,
  },
  data() {
    return {
      checkedFood: [],
    };
  },
  created(){
    this.retrieveRecipes();
  },
  methods: {
    retrieveRecipes(){
      MealService.getRecipes()
      .then(response =>{
        this.$store.commit("SET_RECIPES", response.data);
      })
    },
    addGroceriesToList() {
        this.$store.commit("ADD_GROCERIES", this.checkedFood);
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

.filterButton{
  width: 100px;
  height: 100px;
  background-color: white;
  border-radius: 50%;
  margin-right: 25px;
  margin-bottom: 25px;
}

.filterButton:hover{
  background-color: maroon;
}
</style>
