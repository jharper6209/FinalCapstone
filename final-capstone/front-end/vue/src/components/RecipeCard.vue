<template>
  <div class="card">
    <router-link class="recipeLink"  v-bind:to="{ name: 'recipe', params: { id: recipe.recipeID } }">
      <img class="plate" src="../assests/plate.png" />
      <img class="recipe-image" v-bind:src="recipe.image" />
    </router-link>
    <button>Remove</button>
  </div>
</template>

<script>
export default {
    data() {
    return {
      checkedRecipe: [],
    };
  },    
  props: ["recipe"],
  methods:{
      addGroceriesToList() {
      this.$store.commit("ADD_GROCERIES", this.checkedRecipe);
      this.resetChecked();
    },
    resetChecked() {
      this.checkedFood = [];
    },
  }
}
</script>

<style scoped>
.card{
  display: flex;
  flex-direction: column;
  align-items: center;
  text-align: center;
}
.recipeLink {
  display: flex;
  flex-direction: column;
  justify-content: center;
  border-radius: 50%;
  width: 300px;
  height: 300px;
  border-style: solid;
  border-color: rgba(255, 255, 0, 0.0);
  border-width: 5px;
  border-radius: 50%;
}

.recipeLink:hover {
  border-style: solid;
  border-color: rgba(255, 255, 255, 0.5);
  border-width: 5px;
  border-radius: 50%;
}

.plate {
  position: absolute;
  width: 290px;
  height: 300px;
  z-index: -1;
}



.recipe-image {
  display: flex;
  margin-left: auto;
  margin-right: auto;
  border-radius: 50%;
  height: 150px;
}

.recipe-name{
  font-family: 'Open Sans', sans-serif;
      font-size: 1.5rem;
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
