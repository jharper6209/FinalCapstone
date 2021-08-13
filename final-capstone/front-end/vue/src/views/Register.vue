<template>
  <div id="register" class="text-center">
    <form class="form-register" @submit.prevent="register">
      <h1 class="h3 mb-3 font-weight-normal header"><br>Ready to Meal Plan Like A Boss?</h1>
      <h4 class="header-2">Curious before you sign up? <router-link v-bind:to="{ name: 'tutorial' }" id="tutorial">Check our tutorial!</router-link></h4>
      <div class="alert alert-danger" role="alert" v-if="registrationErrors">
        {{ registrationErrorMsg }}
      </div>
      <div class="label">
      <label for="username">Choose a Username</label>
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
      <label for="password" class="label">Choose a Password</label>
      <input
        type="password"
        id="password"
        class="form-control"
        placeholder="Password"
        v-model="user.password"
        required
      />
            <label for="password" class="label second">and once more to be sure...</label>
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
.header{
   font-family: "Berkshire Swash", cursive;
     font-size: 3rem;
     margin-bottom: 0;
}
.header-2{
  font-size: 1.5rem;
}
#register{
  height: 100vh;
  width: 100vw;
  display: flex;
  align-items: center;
  justify-content: center;
  color: white;
   font-family: "Open Sans", cursive;
     text-shadow: -1px -1px 0 #000, 1px -1px 0 #000, -1px 1px 0 #000, 1px 1px 0 #000;
      background-image: url("../assests/fullFridge.webp");
        background-repeat: no-repeat;
  background-size: cover;
  top: 0;
  left: 0;
  position: fixed;
  opacity: .8;
}

.label{
  padding-top: 15px;
}

.second{
  font-size: 1.5rem;
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
  font-size: 20px;
  border-style: solid;
  border-width: 2px;
  background-color: white;
  height: 50px;
  width: 300px;
}

#tutorial{
  color: white;
  justify-content: center;
  align-items: center;
  align-content: center;
}

#tutorial:hover{
    color: #169EF2;
}

#login{
  display: flex;
  color: white;
    margin-top: 20px;
    margin-bottom: 20px;
  justify-content: center;
  font-size: 1.1rem;
}

#create{
 font-family: "Allerta Stencil", cursive;
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
  text-shadow: -1px -1px 0 #ffffff, 1px -1px 0 #000, -1px 1px 0 #000, 1px 1px 0 #000;
}

#create:hover{
    color: #169EF2;
}
.form-control{
  font-family: "Allerta Stencil", sans-serif;
  text-align: center;
}
label{
  font-size: 30px;
}
</style>
