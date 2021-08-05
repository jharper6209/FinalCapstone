
  <!-- use selection to let user pick dietary needs

       create a check list
       pull in list of recipes
       filter the list by need
       add a submit
       on submit create a new element to store the users saved recipes 
       v-for through the needs 
   <select>
  </select>   
  <input type="checklist"> -->

<template>
  
<div class ="recipe-list">
<img class='cooking' src='../assests/stillcooking.png'/>
<header> 
  <h1> Available Recipes </h1>
  
 

</header>
<tr v-for="aRecipe in $store.state.dummy" v-bind:key="aRecipe.id">
  <td>

<input type="checkbox" name= "list" > 
<label for= "list"> {{aRecipe.name}} </label>

   
  </td>
</tr>

  
   <input type="submit">
  
  </div>
</template>




<script>

export default {
  computed: {
    listedRecipes(){
   
      return this.$store.state.dummy
        
    }
    
  }
  
  };
  
</script>

<style scoped>

.recipe-list{
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
  height: 100vh;
}

.cooking{
  position: absolute;
  z-index: -1;
}

h1{
  font-size:50px;
  font-family: "Berkshire Swash", cursive;
  display: flex;
  justify-content: center;
  align-items: center;
   color:yellow;
   text-shadow: -1px -1px 0 #000, 1px -1px 0 #000, -1px 1px 0 #000, 1px 1px 0 #000;
}
</style>