<template>
  <div class="recipe-card">
    <router-link class="recipe-detail"  v-bind:to="{ name: 'recipe', params: { id: getCard.recipeID } }">
      <img class="plate" src="../assests/plate.png" />
      <img class="recipe-image" v-bind:src="getCard.image" />
    </router-link>
        <p class="recipe-name" >{{ getCard.name }}</p>
  </div>
</template>

<script>
export default {
    data() {
    return {
      checkedRecipe: [],
    };
  },    
  props: ["getCard"],
  methods:{
      addGroceriesToList() {
      this.$store.commit("ADD_GROCERIES", this.checkedRecipe);
      this.resetChecked();
      this.$router.push("/my-recipes")
    },
    resetChecked() {
      this.checkedRecipe = [];
    },
  }
}
</script>

<style scoped>
.recipe-card{
  display: flex;
  flex-direction: column;
  align-items: center;
  text-align: center;
  width: 300px;
  height: 400px;
  margin-left:1rem;
  margin-right: 1rem;
}

.recipe-detail {
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

.recipe-detail:hover {
  border-style: solid;
  border-color:rgba(24,162,248, 0.8);
  border-width: 5px;
  border-radius: 50%;
}

.plate {
  position: absolute;
  width: 300px;
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
      margin-top: 0rem;
      margin-bottom: 0rem;
}
</style>
