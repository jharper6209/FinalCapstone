<template>
    <div class="buttons">
    <button class="link" v-on:click="updateFilter(0)"> Clear Filter </button>
    <button class="link" v-on:click="updateFilter(1)"> <img src="../assests/gf.png" class="icon"/> Gluten Free </button>
    <button class="link" v-on:click="updateFilter(2)"> <img src="../assests/keto.png" class="icon"/> Keto </button>
    <button class="link" v-on:click="updateFilter(4)"><img src="../assests/vegetarian.png" class="icon"/> Vegatarian </button>
    <button class="link" v-on:click="updateFilter(5)"><img src="../assests/vegan.png" class="icon"/> Vegan </button>
    </div>
</template>

<script>
export default {
    methods: {
      updateFilter(num){
      this.$store.commit("UPDATE_FILTER", parseInt(num))
      },
    }
}
</script>

<style>
.icon{
  width: 50px;
}

.buttons{
  display: flex;
  position: sticky;
  z-index: 1;
}

.link {
  font-family: "Allerta Stencil", sans-serif;
  display: flex;
  flex-wrap: wrap;
  flex-direction: row;
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
  width: 300px;
    margin-top: 25px;
}

</style>