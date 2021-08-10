<template>
  <div class="recipe-list">
    <h1 id="header">Available Recipes</h1>
    <div>
    <img class="filterButton" src="../assests/vegan.png"/>
    <img class="filterButton" src="../assests/vegetarian.png"/>
    <img class="filterButton" src="../assests/gf.png"/>
    </div>
  

    <tr v-for="aRecipe in $store.state.dummy" v-bind:key="aRecipe.id" >
      <td>
        <input type="checkbox" name="list" v-model='aRecipe.checked'   />
        <label for="list"> {{ aRecipe.name }} </label>
      </td>
    </tr>
    <button v-on:click="checkedRecipes()"> Sen To My Recipes </button>
  </div>
</template>

<script>

export default {
  data() {
    return{
   
    myRecipes: []
   
    }
  },

   methods: {
    checkedRecipes() {
let activeRecipe = this.$store.state.dummy.find((q)=>
console.log(q)
)
this.myRecipes.push(this.filteredRecipes)
    },

savedRecipes(){

      if (event.target.checked) {
        this.myRecipes.push(parseInt(event.target.id));
        value = "true"
      } else {
        this.myRecipes = this.myRecipes.filter((aRecipe) => {
          return aRecipe !== parseInt(event.target.id);
        });
      }
    },




    filteredRecipes() {
 return this.dummy.filter((aRecipe) => {
 return dummy.name.includes(this.filterText);
 });

 }

    },
 
}
  
  
  
  
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
