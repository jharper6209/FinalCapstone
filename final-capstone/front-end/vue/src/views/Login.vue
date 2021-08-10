<template>
  <div id="login" class="text-center">
    <form class="form-signin" @submit.prevent="login">
      <h1 class="h3 mb-3 font-weight-normal">Please Sign-In To MealPlanner</h1>
      
      <div
        class="alert alert-danger"
        role="alert"
        v-if="invalidCredentials"
      >Invalid Username And Password!</div>
            <div class="label">
      <label for="username">Enter Your Username</label>
      <input
        type="text"
        id="username"
        class="form-control"
        placeholder="Username"
        v-model="user.username"
        required
        autofocus
      />
            </div>
      <div class="label">
      <label for="password">Enter Your Password</label>
      <input
        type="password"
        id="password"
        class="form-control"
        placeholder="Password"
        v-model="user.password"
        required
      />
      </div>
      <router-link :to="{ name: 'register' }" id="register">Need An Account?</router-link>
      <button type="submit" id="sign-in">Sign-In</button>
    </form>
    </div>
    </div>
</template>

<script>
import authService from "../services/AuthService";

export default {
  name: "login",
  components: {},
  data() {
    return {
      user: {
        username: "",
        password: ""
      },
      invalidCredentials: false
    };
  },
  methods: {
    login() {
      authService
        .login(this.user)
        .then(response => {
          if (response.status == 200) {
            this.$store.commit("SET_AUTH_TOKEN", response.data.token);
            this.$store.commit("SET_USER", response.data.user);
            this.$router.push("/Tutorial");
          }
        })
        .catch(error => {
          const response = error.response;
          if (response.status === 401) {
            this.invalidCredentials = true;
          }
        });
    },
  },
};
</script>

<style scoped>
#login{
  height: 100vh;
  width: 100vw;
  display: flex;
  align-items: center;
  justify-content: center;
  color: maroon;
   font-family: "Berkshire Swash", cursive;
  
  background-image: url("../assests/chalkboard.webp");
  background-size:cover;
  top: 0;
  left: 0;
  position: fixed;
  text-shadow: -1px -1px 0 #000, 1px -1px 0 #000, -1px 1px 0 #000, 1px 1px 0 #000;
}

.label{
  padding-top: 15px;
}

.form-signin{
  display: flex;
  flex-direction: column;
  align-items: center;
}

#username, #password{
  display: flex;
  border-radius: 10px;
    justify-content: center;
  align-content: center;
  text-decoration: none;
  font-size: 20px;
  border-style: solid;
  border-width: 2px;
  background-color: white;
  height: 50px;
  width: 300px;
}

#register{
  color: maroon;
      text-align: center;
display: flex;
justify-content:center;
margin-right: 45px;
margin-top: 20px;
margin-bottom: 20px;
      }

#sign-in{
 font-family: "Berkshire Swash", cursive;
  display: flex;
  justify-content: center;  
  align-items: center;
  color:maroon;
  border-radius: 10px;
  text-decoration: none;
  font-size: 30px;
  border-style: solid;
  border-width: 2px;
  background-color: white;
  height: 50px;
  width: 300px;
  text-shadow: -1px -1px 0 #000, 1px -1px 0 #000, -1px 1px 0 #000, 1px 1px 0 #000;
}
h3.mb-3.font-weight-normal{
  align-content: center;
}
.form-control{
  font-family: "Allerta Stencil", sans-serif;
  text-align: center;
}
label{
  font-size: 30px;
}
</style>
