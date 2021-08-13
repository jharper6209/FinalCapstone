import axios from 'axios';
const http = axios.create({
    baseURL: "http://localhost:8080"
})
export default{
  getRecipes(){
    return http.get('/recipe')
  },
  getIngredients(){
    return http.get('/ingredient')
  },
  getDirections(id){
    return http.get(`/directions/recipeid/${id}`)
  }
}