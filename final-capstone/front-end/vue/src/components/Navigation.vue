<template>
  <div id="navigation">
    <div id="nav-header">
    <img  id="our-logo" src="../assests/logo.png"/>
    </div>
    <table id="top-table">
      <tr>
        <router-link class="link" v-bind:to ="{name: 'home'}"><p><i class="fas fa-book"></i> ALL RECIPES</p></router-link>
      </tr>
            <tr>
        <router-link class="link" v-bind:to="{ name: 'myRecipes' } "><p><i class="fas fa-home"></i> MY RECIPES</p></router-link>
      </tr>
            <!-- <tr>
        <router-link class="link" v-bind:to="{ name: 'grocery' }"><p><i class="fas fa-shopping-bag"></i> GROCERY LIST</p></router-link
        >
      </tr> -->
    </table>
    <table id="bottom-table">
      <tr>
        <router-link class="link" v-bind:to="{ name: 'tutorial'}"><p><i class="fas fa-question-circle"></i> TUTORIAL</p></router-link>
      </tr>
      <tr>
        <router-link class="link" v-bind:to="{ name: 'logout' }" v-if="$store.state.token != ''"><p><i class="fas fa-sign-out-alt"></i> LOGOUT</p></router-link>
      </tr>
    </table>    
  </div>
</template>
<style scoped>
#navigation {
  height: 100vh;
  top:0;
  right:0;
  position:sticky;
  z-index: 999;
  background-color: maroon;
  padding-left: 10px;
  flex-wrap: wrap;
}

#nav-header {
  display: flex;
  justify-content: center;
}

#our-logo{
height: 150px;
}

#top-table {
  display: flex;
  flex-direction: column;
  height: 56vh;
  background-color: maroon;
}

.link {
  font-family: "Allerta Stencil", sans-serif;
  color: maroon;
  text-decoration: none;
  font-size: 30px;
  background-color: white;
  height: 50px;
  width: 300px;
  margin-top: 25px;
}
</style>
