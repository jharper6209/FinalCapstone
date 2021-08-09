<template>
  <div id="register" class="text-center">
    <form class="form-register" @submit.prevent="register">
      <h1 class="h3 mb-3 font-weight-normal">Create New Account To Starting Meal Planning Like A Boss</h1>
      <h4>Curious before you sign up? <router-link v-bind:to="{ name: 'tutorial' }" id="tutorial">Check our tutorial!</router-link></h4>
      <div class="alert alert-danger" role="alert" v-if="registrationErrors">
        {{ registrationErrorMsg }}
      </div>
      <div class="label">
      <label for="username">Choose A Username</label>
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
      <label for="password" class="label">Create Your Password</label>
      <input
        type="password"
        id="password"
        class="form-control"
        placeholder="Password"
        v-model="user.password"
        required
      />
      <input
        type="password"
        id="confirmPassword"
        class="form-control"
        placeholder="Confirm Password"
        v-model="user.confirmPassword"
        required
      />
      </div>
      <router-link :to="{ name: 'login' }" id="login">Have An Account? Login!</router-link>
      <button class="btn btn-lg btn-primary btn-block" id="create" type="submit">
        Create Account
      </button>
    </form>
  </div>
</template>

<script>
import authService from '../services/AuthService';

export default {
  name: 'register',
  data() {
    return {
      user: {
        username: '',
        password: '',
        confirmPassword: '',
        role: 'user',
      },
      registrationErrors: false,
      registrationErrorMsg: 'There were problems registering this user.',
    };
  },
  methods: {
    register() {
      if (this.user.password != this.user.confirmPassword) {
        this.registrationErrors = true;
        this.registrationErrorMsg = 'Password & Confirm Password do not match.';
      } else {
        authService
          .register(this.user)
          .then((response) => {
            if (response.status == 201) {
            this.$store.commit("SET_AUTH_TOKEN", response.data.token);
            this.$store.commit("SET_USER", response.data.user);
              this.$router.push({
                path: '/tutorial',
                query: { registration: 'success' },
              });
            }
          })
          .catch((error) => {
            const response = error.response;
            this.registrationErrors = true;
            if (response.status === 400) {
              this.registrationErrorMsg = 'Bad Request: Validation Errors';
            }
          });
      }
    },
    clearErrors() {
      this.registrationErrors = false;
      this.registrationErrorMsg = 'There were problems registering this user.';
    },
  },
};
</script>

<style scoped>
#register{
  height: 100vh;
  width: 100vw;
  display: flex;
  align-items: center;
  justify-content: center;
  color: yellow;
  font-family: 'Open Sans', sans-serif;
  font-size: 1.7em;
    background-image: url("https://c.tenor.com/uowg16d06EgAAAAC/meal-prepped.gif");
  background-size: cover;
  position: fixed;
  top: 0;
  left: 0;
   text-shadow: -1px -1px 0 #000, 1px -1px 0 #000, -1px 1px 0 #000, 1px 1px 0 #000;
}

.label{
  padding-top: 15px;
}

.form-register{
  display: flex;
  flex-direction: column;
  align-items: center;
}

#username, #password, #confirmPassword{
  display: flex;
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

#tutorial{
  color: yellow;
  justify-content: center;
  align-items: center;
  align-content: center;
}

#login{
  display: flex;
  color: yellow;
    margin-top: 20px;
    margin-bottom: 20px;
  justify-content: center;
}

#create{
  font-family: "Allerta Stencil", sans-serif;
  display: flex;
  justify-content: center;
  align-items: center;
  color: yellow;
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
</style>
