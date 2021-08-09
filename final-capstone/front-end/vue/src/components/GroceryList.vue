<template>
<div class="grocery-list">
  </div>
</template>

<script>
export default {

}
</script>

<style scoped>
.grocery-list{
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
  height: 100vh;
}

.cooking{
  position: absolute;
  z-index: -1;
}

h1{
  font-size:50px;
  font-family: "Berkshire Swash", cursive;
  display: flex;
  justify-content: center;
  align-items: center;
   color:yellow;
   text-shadow: -1px -1px 0 #000, 1px -1px 0 #000, -1px 1px 0 #000, 1px 1px 0 #000;
   }
</style>