<template>
  <form @submit.prevent="addGroceriesToList">
    <div
      class="form-group form-check"
      v-for="select in this.$store.state.groceryList"
      v-bind:key="select.id"
    >
      <personal-card v-bind:card="select" v-bind:key="select.id" />
      <label class="form-check-label" :for="select.id">{{ select.name }}</label>
      <input
        type="checkbox"
        v-model="checkedIngredient"
        :id="select.name"
        :value="select.ingredients.name"
      />
    </div>
    <div class="form-group">
      <button class="btn btn-primary">Submit</button>
      <img src="../assests/whatsfordinner.png" id="background" />
    </div>
  </form>
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
    addGroceriesToList() {
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
#background {
  position: absolute;
  z-index: -2;
  top: 0;
  left: 0;
  opacity: 35%;
  background-image: url("../assests/whatsfordinner.png");
  background-size: cover;
  background-position: center;
}

#card-container {
  display: flex;
  flex-direction: column;
  flex-wrap: wrap;
}

#card {
  display: flex;
  justify-content: space-evenly;
  flex-wrap: wrap;
}

#button {
  font-family: "Allerta Stencil", sans-serif;
  display: flex;
  justify-content: center;
  align-items: center;
  color: maroon;
  border-radius: 10px;
  align-content: center;
  text-decoration: none;
  font-size: 30px;
  border-style: solid;
  border-width: 2px;
  background-color: white;
  height: 50px;
  margin-top: 25px;
}
</style>
