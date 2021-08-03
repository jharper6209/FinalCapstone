<template>
  <div id="right">
      <h1>Recipe List</h1>
      <router-link v-bind:to="{ name: 'home' }">Home</router-link>
      <router-link v-bind:to="{ name: 'logout' }" v-if="$store.state.token != ''">Logout</router-link>
</template>

<script>
export default {

}
</script>

<style>

</style>