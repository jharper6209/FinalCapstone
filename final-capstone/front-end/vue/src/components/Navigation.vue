<template>
  <div id="navigation">

    <h1 class="nav-header">The <u>KEY</u> Choices</h1>
    <table class="link-table">
      <tr >
        <router-link class="link" v-bind:to="{ name: 'home' } "><p><i class="fas fa-home"></i> HOME</p></router-link>
      </tr>
      <tr>
        <router-link class="link" v-bind:to="{ name: 'grocery' }"><p><i class="fas fa-shopping-bag"></i> GROCERY LIST</p></router-link
        >
      </tr>
      <tr>
        <router-link class="link" v-bind:to ="{name: 'recipes'}"><p><i class="fas fa-book-dead"></i> ALL RECIPES</p>
           </router-link>
      </tr>
    </table>

    <table class="footer-table">
      <!-- If in need of a hard link for tutorial -->
      <!-- <tr>
        <router-link class="link"
        v-bind:to="{ name: 'Error'}"
        v-if="$store.state.token === ''">
        <p><i class="fas fa-question-circle"></i> TUTORIAL</p>
        </router-link>
      </tr> -->
      <tr>
        <router-link class="link"
          v-bind:to="{ name: 'logout' }"
          v-if="$store.state.token != ''">
          <p><i class="fas fa-sign-out-alt"></i> LOGOUT</p>
          </router-link>
      </tr>
    </table>
  </div>
</template>

<script>
export default {};
</script>

<style scoped>
#navigation {
  display: flex;
  flex-direction: column;
  align-items: center;
  height: 95vh;

}

.open-nav{
  display:flex;
  justify-content: center;
  position: absolute;
}

.nav-header {
  color: white;
    font-family: "Allerta Stencil", sans-serif;
}

.link-table {
  display: flex;
  align-content: center;
  flex-wrap: wrap;
  flex-direction: column;
  height: 100vh;
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
    margin-top: 25px;
}
</style>
