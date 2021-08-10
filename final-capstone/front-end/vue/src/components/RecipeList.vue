<template>
  <div class="recipe-list">

    <h1 id="header">Available Recipes</h1>
    <div>
                    <router-link class="tutorialLink"
        v-bind:to="{ name: 'error'}"
      >
    <img class="filterButton" src="../assests/vegan.png"/>
                    </router-link>

                  <router-link class="tutorialLink"
        v-bind:to="{ name: 'error'}"
      >
    <img class="filterButton" src="../assests/vegetarian.png"/>
                  </router-link>

                  <router-link class="tutorialLink"
        v-bind:to="{ name: 'error'}"
      >
    <img class="filterButton" src="../assests/gf.png"/>
                  </router-link>
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
              <router-link class="tutorialLink"
        v-bind:to="{ name: 'error'}"
      >
    <input type="submit" />
              </router-link>
                  <img src="../assests/whatsfordinner.png" id="background"/>
  </div>
</template>

<script>
export default {};
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
