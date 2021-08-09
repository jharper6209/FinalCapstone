<template>
  <div class="recipe-list">
    <h1 id="header">Available Recipes</h1>
    <div>
    <img class="filterButton" src="../assests/vegan.png"/>
    <img class="filterButton" src="../assests/vegetarian.png"/>
    <img class="filterButton" src="../assests/gf.png"/>
    </div>
    <select
      v-for="aNeed in $store.state.categoryDummy"
      v-bind:key="aNeed.id"
      name="needs"
    >
      <option value="">--</option>
      <option value="aNeed"></option>
    </select>
    <tr v-for="aRecipe in $store.state.dummy" v-bind:key="aRecipe.id">
      <td>
        <input type="checkbox" name="list" />
        <label for="list"> {{ aRecipe.name }} </label>
      </td>
    </tr>
    <input type="submit" />
  </div>
</template>

<script>

export default {
  data() {
    return{
    value: "false",
    recipe: []
    }
  },

method: {
  updateList(){

   this.$store.state.recipe.push
  }
}
  
  
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
  background-image: url("../assests/whatsfordinner.png");
  background-size: cover;
  top: 0;
  left: 0;
  position: fixed;
}

<<<<<<< HEAD
.reading{
  position: absolute;
  z-index: -1;
=======
#header{
  font-size: 50px;
  font-family: "Berkshire Swash", cursive;
  color: yellow;
  text-shadow: -1px -1px 0 #000, 1px -1px 0 #000, -1px 1px 0 #000,
    1px 1px 0 #000;
>>>>>>> 79d4c5f2ddd6d24a2e9888609ec5fb1c1d0e5a19
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
