<template>
  <div class="card">
          <img class="recipe-image" v-bind:src="card.image" />
    <h4 class="recipe-title">{{ card.name }}</h4>
  </div>
</template>

<script>
export default {
    props: ["card"],
};
</script>

<style scoped>

.card{
    background-color: #00AFF0;
    border-radius: 5%;
    width: 200px;
    height: 350px;
    border-color:black;
    border: 2px solid black;
    animation-name: test;
    animation-duration: 5s;
}

@keyframes test{
    0% {background-color: black}
    100%{background-color: #00AFF0}
}

.recipe-image{
    display: block;
    margin-left: auto;
    margin-right: auto;
    margin-top: 10px;
    border-radius: 50%;
    height: 180px;
    border-style:solid;
    border-color: black;
}
.recipe-title{
    text-align: center;
    color: #FFFFFF;
    font-size: 1.5rem;
    font-family: 'Kalam', cursive;
     text-shadow: -1px -1px 0 #000, 1px -1px 0 #000, -1px 1px 0 #000, 1px 1px 0 #000;
}
</style>
