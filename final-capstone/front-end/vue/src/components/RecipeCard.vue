<template>
  <div>
      <router-link class="card" v-bind:to="{name: 'Recipe', params:{id: card.id}}">
      <img class="plate" src="../assests/plate.png">
          <img class="recipe-image" v-bind:src="card.image" />
                
    <h4 class="recipe-title">{{ card.name }}</h4>
    </router-link>
    <button>Remove</button>
  </div>
</template>

<script>
export default {
    props: ["card"],
};
</script>

<style scoped>

.card{
    display: flex;
    flex-direction: column;
    justify-content: center;
    border-radius: 50%;
    width: 300px;
    height: 300px;
}

.plate{
    position: absolute;
    width: 300px;
    height:300px;
    z-index: -1;
}

.card:hover{
border-style:solid;
border-color:rgb(255, 255, 255, 0.5);
border-width: 5px
}

.recipe-image{
    display: flex;
    margin-left: auto;
    margin-right: auto;
    margin-top: 160px;
    margin-bottom: 50px;
    border-radius: 50%;
    height: 150px;
}

.recipe-title{
    text-align: center;
    color: #FFFFFF;
    font-size: 1.5rem;
    font-family: 'Kalam', cursive;
     text-shadow: -1px -1px 0 #000, 1px -1px 0 #000, -1px 1px 0 #000, 1px 1px 0 #000;
}
</style>
