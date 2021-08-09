<template>
  <div class="tutorial">
    <h1>Welcome To The Structly Equal Meals!</h1>
    <p class="answer">
      Here you will build a meal plan
      based on your dietary needs. We are currently under construction so please
      bare with our growing pains. Our team is focused on bringing you the best
      experience.
    </p>
    <p class="question">OK so what is going on?</p>

    <div class="tutorialCard">

      <router-link class="tutorialLink"
        v-bind:to="{ name: 'error', params: { id: recipe.id } }"
      >
            <div class="card">
        <img class="plate" src="../assests/plate.png" />
          <img class="recipe-image" v-bind:src="recipe.image" />
        </div>
        <h4 class="recipe-title">{{ recipe.name }}</h4>
      </router-link>
    </div>

    <p class="answer">
      Here you can see one of our recipes! When clicked it will bring up the
      recipe details and instructions! 
      In this tutorial though there will be nothing there but you can click it and try!
    </p>
    <p class="question">
      Cool what about the button at the bottom of the page?
    </p>
    <p class="answer">
      This will add all the ingredidents to your Grocery List where you can
      print or use the checklist functionality!
    </p>
    <p class="question">
      All these recipes are great but I only want to see a specific one
    </p>
    <p class="answer">
      Coming soon we will have a larger list of recipes for you to look at and
      try. Once we have our library built you will be able to browse and look at
      each recipe.
    </p>
        <p class="question">
          Does this cost anything?
          </p>
          <p class="answer">
            No this is a free service! If you are ready head here to sign up or if you have signed up head here to login!
            </p>
    </p>
  </div>
</template>

<script>
export default {
  computed: {
    recipe() {
      return this.$store.state.dummy.find((f) => f.id === 1);
    },
  },
};
</script>

<style scoped>
.tutorial{
  color: white;
}
.tutorialLink{
  display: flex;
  flex-direction: column;
  align-items: center;
}

.tutorialCard {
  display: flex;
  flex-direction: column;
}
.card {
  display: flex;
  align-items: center;
  justify-content: center;
  border-radius: 50%;
  width: 300px;
  height: 300px;
}

.plate {
  position: absolute;
  width: 300px;
  height: 300px;
  z-index: -1;
}

.card:hover {
  border-style: solid;
  border-color: rgb(255, 255, 255, 0.5);
  border-width: 5px;
}

.recipe-image {
  border-radius: 50%;
  height: 50%;
  width: 50%;
  align-content: center;
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
