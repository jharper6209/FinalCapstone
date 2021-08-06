<template>
  <div id="login" class="text-center">
    <form class="form-signin" @submit.prevent="login">
      <h1 class="h3 mb-3 font-weight-normal">Please Sign In</h1>
      <div
        class="alert alert-danger"
        role="alert"
        v-if="invalidCredentials"
      >Invalid username and password!</div>
      <div
        class="alert alert-success"
        role="alert"
        v-if="this.$route.query.registration"
      >Thank you for registering, please sign in.</div>
      <label for="username" class="sr-only">Username</label>
      <input
        type="text"
        id="username"
        class="form-control"
        placeholder="Username"
        v-model="user.username"
        required
        autofocus
      />
      <label for="password" class="sr-only">Password</label>
      <input
        type="password"
        id="password"
        class="form-control"
        placeholder="Password"
        v-model="user.password"
        required
      />
      <router-link :to="{ name: 'register' }">Need an account?</router-link>
      <button type="submit">Sign in</button>
    </form>
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
            this.$router.push("/");
          }
        })
        .catch(error => {
          const response = error.response;

          if (response.status === 401) {
            this.invalidCredentials = true;
          }
        });
    }
  },
};
</script>
<style>

/* #app{
  background-image: url("https://v.fastcdn.co/u/d1da2199/54578221-0-meal-prep-recipe-var.gif");
  background-size: cover;
  top: 0;
  left: 0;
} */


#login{
display: flex;
justify-content: center;
align-items: center;
height: 100vh;
padding: 0;
margin:0;
}

.h3.mb-3.font-weight-normal{
  display: flex;
  justify-content: center;
}


#password{
  display: flex;
}

#username{
  display: flex;
}
body{
  background : maroon;
  font-family:cursive, 'Times New Roman', Times, serif;
}
input[type=text]{
  font-family:cursive, 'Times New Roman', Times, serif ;
  background-color: lightgray;
}
input[type=password]{
  font-family:cursive, 'Times New Roman', Times, serif ;
  background-color: lightgray;
}
button[type=submit]{
  font-family:cursive, 'Times New Roman', Times, serif ;
 
}



</style>
