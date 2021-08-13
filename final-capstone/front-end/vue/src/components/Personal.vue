<template>
  <div id="personal-list">
    <h1 id="personal-header">My Recipes</h1>
    <h2 id="personal-description">
      Here you can see the recipes you picked!
    </h2>
    <div class="personal-instructions">
    <h3 id="personal-choices">
      View the details of your recipes by clicking on one of plates below. These will be saved for you for future use.
    </h3>
    </div>
    <div class="personal-container">
      <div
        class="single-recipe"
        v-for="select in this.$store.state.groceryList"
        v-bind:key="select.id"
      >
        <personal-card v-bind:card="select" v-bind:key="select.id" />
                <!-- <div class="recipe-check">
             <form id="recipe-buttons" @submit.prevent="addIngredientsToList">
          <label class="myCheckbox" :for="select.recipeID"> Add to your grocery list?
                      <input
            type="checkbox"
            v-model="checkedIngredient"
            :id="select.recipeId"
            :value="select"
          />
          </label>
          <button>submit</button>
          </form>
          </div> -->
      </div>
    </div>
    </div>
</template>

<script>
import PersonalCard from "./PersonalCard.vue";
export default {
  components: {
    PersonalCard,
  },
  data() {
    return {
      checkedIngredient: [],
    };
  },
  methods: {
    addIngredientsToList() {
      this.$store.commit("ADD_INGREDIENTS", this.checkedIngredient);
      this.resetChecked();
    },
    resetChecked() {
      this.checkedIngredient = [];
    },
  },
};
</script>

<style scoped>
#personal-list{
  text-shadow: -1px -1px 0 #000, 1px -1px 0 #000, -1px 1px 0 #000,
    1px 1px 0 #000;
}

#personal-header {
  font-family: "Berkshire Swash", cursive;
  font-size: 4rem;
  text-align: center;
  text-shadow:none;
}

#personal-description {
  font-family: "Open Sans", cursive;
  font-size: 1.5rem;
    text-align: center;
}

.personal-instructions {
  display: flex;
  justify-content: center;
  font-family: "Open Sans", cursive;
  font-size: 1.2rem;
}

#personal-choices{
  display: flex;
  width:58vw;
  margin-bottom:0rem;
}

.personal-container{
  display: flex;
  justify-content: center;
  flex-wrap: wrap;
  margin-top: 2rem;
}
.single-recipe{
  display: flex;
  flex-direction: column;
  align-items: center;
}
</style>
