<template>
  <div id="right">
    <h1 class="nav-header">The <u>RIGHT</u> choices</h1>
    <table class="link-table">
      <tr >
        <router-link class="link" v-bind:to="{ name: 'home' } " v-if="$store.state.token !=''"
          ><p><i class="fas fa-home"></i> HOME</p></router-link
        >
      </tr>
      <tr>
        <router-link class="link" v-bind:to="{ name: 'grocery' }"  v-if="$store.state.token !=''">
          <p><i class="fas fa-shopping-bag"></i> GROCERY LIST</p></router-link
        >
      </tr>
    </table>

    <table class="footer-table">
      <tr class="link">
        <router-link class="link"
          v-bind:to="{ name: 'logout' }"
          v-if="$store.state.token != ''"
          ><p><i class="fas fa-sign-out-alt"></i> LOGOUT</p></router-link
        >
      </tr>
    </table>
  </div>
</template>

<script>
export default {};
</script>

<style scoped>
#right {
  display: flex;
  flex-direction: column;
  align-items: center;
  height: 100%;
}

.nav-header {
  color: white;
}

.link-table {
  display: flex;
  align-content: center;
  flex-wrap: wrap;
  flex-direction: column;
  height: 80vh;
}

.link {
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
  width: 300px;
}
</style>
