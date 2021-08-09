import Vue from 'vue'
import Vuex from 'vuex'
import axios from 'axios'

Vue.use(Vuex)

/*
 * The authorization header is set for axios when you login but what happens when you come back or
 * the page is refreshed. When that happens you need to check for the token in local storage and if it
 * exists you should set the header so that it will be attached to each request
 */

const currentToken = localStorage.getItem('token')
const currentUser = JSON.parse(localStorage.getItem('user'));

if(currentToken != null) {
  axios.defaults.headers.common['Authorization'] = `Bearer ${currentToken}`;
}

export default new Vuex.Store({
  state: {
    currentPage:'',
    token: currentToken || '',
    user: currentUser || {},
   
    dummy:[
      {
        id: 1,
        name: 'Beef and Mustard Pie',
        image: 'https://www.themealdb.com/images/media/meals/sytuqu1511553755.jpg',
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed facilisis sapien ac nisi venenatis, id varius purus convallis. Morbi vestibulum sollicitudin maximus. Vestibulum nibh eros, vulputate quis ex vitae, hendrerit faucibus velit. Cras vitae lectus quis lorem dignissim suscipit ut sed neque. Quisque rutrum mi in sapien rhoncus, nec elementum enim posuere. Cras dignissim imperdiet dolor vitae consequat. Morbi a odio ante. Nunc ac malesuada est. Etiam fringilla non elit et commodo. Proin tempor ultrices finibus. Maecenas mattis nisi et justo pellentesque volutpat. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce sed gravida lacus, at dignissim ante. In pretium facilisis sagittis. Proin felis ipsum, ultricies ac mi eu, fermentum dapibus dolor. Integer ut congue eros.",
        ingredients:{
          id: 1,
          ingredientId: 1,
          name: 'Beef'
        },
        category: 0,
      },
      {
        id: 2,
        name: 'Ayam Percik',
        image: 'https://www.themealdb.com/images/media/meals/020z181619788503.jpg',
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed facilisis sapien ac nisi venenatis, id varius purus convallis. Morbi vestibulum sollicitudin maximus. Vestibulum nibh eros, vulputate quis ex vitae, hendrerit faucibus velit. Cras vitae lectus quis lorem dignissim suscipit ut sed neque. Quisque rutrum mi in sapien rhoncus, nec elementum enim posuere. Cras dignissim imperdiet dolor vitae consequat. Morbi a odio ante. Nunc ac malesuada est. Etiam fringilla non elit et commodo. Proin tempor ultrices finibus. Maecenas mattis nisi et justo pellentesque volutpat. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce sed gravida lacus, at dignissim ante. In pretium facilisis sagittis. Proin felis ipsum, ultricies ac mi eu, fermentum dapibus dolor. Integer ut congue eros.",
        ingredients:{
          id: 2,
          ingredientId: 2,
          name: 'Chicken'
        },
        category: 2,
      },
      {
        id: 3,
        name: 'Fettucine alfredo',
        image: 'https://www.themealdb.com/images/media/meals/uquqtu1511178042.jpg',
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed facilisis sapien ac nisi venenatis, id varius purus convallis. Morbi vestibulum sollicitudin maximus. Vestibulum nibh eros, vulputate quis ex vitae, hendrerit faucibus velit. Cras vitae lectus quis lorem dignissim suscipit ut sed neque. Quisque rutrum mi in sapien rhoncus, nec elementum enim posuere. Cras dignissim imperdiet dolor vitae consequat. Morbi a odio ante. Nunc ac malesuada est. Etiam fringilla non elit et commodo. Proin tempor ultrices finibus. Maecenas mattis nisi et justo pellentesque volutpat. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce sed gravida lacus, at dignissim ante. In pretium facilisis sagittis. Proin felis ipsum, ultricies ac mi eu, fermentum dapibus dolor. Integer ut congue eros.",
        ingredients:{
          id: 3,
          ingredientId: 3,
          name: 'Noodles'
        },
        category: 1, 
      },
      {
        id: 4,
        name: 'Vegan Chocolate Cake',
        image: "https://www.themealdb.com/images/media/meals/qxutws1486978099.jpg",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed facilisis sapien ac nisi venenatis, id varius purus convallis. Morbi vestibulum sollicitudin maximus. Vestibulum nibh eros, vulputate quis ex vitae, hendrerit faucibus velit. Cras vitae lectus quis lorem dignissim suscipit ut sed neque. Quisque rutrum mi in sapien rhoncus, nec elementum enim posuere. Cras dignissim imperdiet dolor vitae consequat. Morbi a odio ante. Nunc ac malesuada est. Etiam fringilla non elit et commodo. Proin tempor ultrices finibus. Maecenas mattis nisi et justo pellentesque volutpat. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce sed gravida lacus, at dignissim ante. In pretium facilisis sagittis. Proin felis ipsum, ultricies ac mi eu, fermentum dapibus dolor. Integer ut congue eros.",
        ingredients:{
          id: 4,
          ingredientId: 4,
          name: 'Cake'
        },
        category: 3,
      },
    ],
},
  mutations: {
    SET_AUTH_TOKEN(state, token) {
      state.token = token;
      localStorage.setItem('token', token);
      axios.defaults.headers.common['Authorization'] = `Bearer ${token}`
    },
    SET_USER(state, user) {
      state.user = user;
      localStorage.setItem('user',JSON.stringify(user));
    },
    LOGOUT(state) {
      localStorage.removeItem('token');
      localStorage.removeItem('user');
      state.token = '';
      state.user = {};
      axios.defaults.headers.common = {};
    },
    SHOW_CURRENT_DETAIL(state, data){
      state.currentDummy = data;
    },
    FILTER_GROCERY_DUMMY(state, )
  },
})
