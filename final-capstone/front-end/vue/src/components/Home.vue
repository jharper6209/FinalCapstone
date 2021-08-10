<template>
  <form @submit.prevent="addGroceriesToList">
    <div
      class="form-group form-check"
      v-for="item in this.$store.state.dummy"
      v-bind:key="item.id"
    >
      <recipe-card v-bind:card="item" v-bind:key="item.id" />
      <label class="form-check-label" :for="item.id">{{ item.name }}</label>
      <input
        type="checkbox"
        v-model="checkedFood"
        :id="item.name"
        :value="item.name"
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
export default {
  components: {
    RecipeCard,
  },
  data() {
    return {
      checkedFood: [],
    };
  },
  methods: {
    addGroceriesToList() {
      // for(let i = 0; i < this.checkedFood.length; i++) {
      //   console.log(this.checkedFood[i]),
        this.$store.commit("ADD_GROCERIES", this.checkedFood);
      // }
      this.resetChecked();
    },
    resetChecked() {
      this.checkedFood = [];
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
