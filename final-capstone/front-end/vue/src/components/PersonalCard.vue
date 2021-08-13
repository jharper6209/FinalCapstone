<template>
  <div class= "personal-card">
    <router-link
      class="personal-detail"
      v-bind:to="{ name: 'recipe', params: { id: card.recipeID } }"
    >
      <img class="plate" src="../assests/plate.png" />
      <img class="personal-image" v-bind:src="card.image" />
    </router-link>    
    <p class="personal-name" >{{ card.name }}</p>
  </div>
</template>

<script>
export default {    
  props: ["card"],
  }
</script>

<style scoped>
.personal-card{
  display: flex;
  flex-direction: column;
  align-items: center;
  text-align: center;
  width: 300px;
  height: 400px;
  margin-left:1rem;
  margin-right: 1rem;
}
.personal-detail {
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

.personal-detail:hover {
  border-style: solid;
  border-color: rgba(24, 162, 248, 0.8);
  border-width: 5px;
  border-radius: 50%;
}

.plate {
  position: absolute;
  width: 300px;
  height: 300px;
  z-index: -1;
}



.personal-image {
  display: flex;
  margin-left: auto;
  margin-right: auto;
  border-radius: 50%;
  height: 150px;
}

.personal-name{
  font-family: 'Open Sans', sans-serif;
      font-size: 1.5rem;
      margin-top: 0rem;
}
</style>
