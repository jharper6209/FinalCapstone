/********************************************************************************************************************** 
* This will should contain Application API Controllers and related objects
**********************************************************************************************************************/

package com.techelevator.application.controller;

import com.techelevator.application.dao.DirectionsDAO;
import com.techelevator.application.dao.IngredientDAO;
import com.techelevator.application.dao.RecipeDAO;
import com.techelevator.application.jdbcdao.IngredientJDBCDAO;
import com.techelevator.application.jdbcdao.RecipeJDBCDAO;
import com.techelevator.application.model.Directions;
import com.techelevator.application.model.Ingredient;
import com.techelevator.application.model.Recipe;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.*;

import java.sql.Timestamp;
import java.util.List;

@CrossOrigin
@RestController
public class ApiController {

    private RecipeDAO recipeDAO;
    private IngredientDAO ingredientDAO;
    private DirectionsDAO directionsDAO;

    public ApiController(RecipeDAO theRecipe, IngredientDAO theIngredient, DirectionsDAO theDirections) {
        recipeDAO = theRecipe;
        ingredientDAO = theIngredient;
        directionsDAO = theDirections;


    }
/**********************************************************************************************************************
* Put your Application API Controllers here
**********************************************************************************************************************/

// List all recipes
    @RequestMapping(path = "/recipe" , method = RequestMethod.GET)
    public List<Recipe> recipeList() {
        logRequest("Request to get all recipes - /recipe");
        return recipeDAO.recipeList();
    }

// List all ingredients
    @RequestMapping(path = "/ingredient" , method = RequestMethod.GET)
    public List<Ingredient> ingredientListList() {
    logRequest("Request to get all ingredients - /ingredient");
    return ingredientDAO.ingredientList();
}

// Get ingredients by recipeId
    @RequestMapping(path = "/ingredient/recipeid/{id}" , method = RequestMethod.GET)
    public List<Ingredient> getIngredientsByRecipeId(@PathVariable int id) {
    logRequest("Request to get all ingredientsByRecipeId - /ingredient/recipeid/" + id);
    return ingredientDAO.getIngredientsByRecipeId(id);
    }

// Get ingredients by ingredientId
    @RequestMapping(path = "/ingredient/{id}" , method = RequestMethod.GET)
    public Ingredient getIngredientsByIngredientId(@PathVariable int id) {
        logRequest("Request to get all ingredientsByIngredientId - /ingredient/" + id);
        return ingredientDAO.getIngredientById(id);
    }

// Get directions by recipeId
    @RequestMapping(path = "/directions/recipeid/{id}" , method = RequestMethod.GET)
    public List<Directions> getDirectionsByRecipeId(@PathVariable int id) {
        logRequest("Request to get all directionsByRecipeId - /directions/recipeid/" + id);
        return directionsDAO.getDirectionsByRecipeId(id);
}
// Get recipe by categoryId
    @RequestMapping(path = "/recipe/categoryid/{id}" ,  method = RequestMethod.GET)
    public List<Recipe> getRecipeByCategoryId(@PathVariable int id) {
        logRequest("Request to get recipeNameByCategoryId - /recipe/categoryid/" +id);
        return recipeDAO.getRecipeByCategoryId(id);
    }



	
	
	
/********************************************************************************************************************* 
* Use this method if you'd like to log calls to your controllers - these message can aid in your troubleshooting
* 
* To use it: logRequest("a message you want to appear after the timestamp in the server log")
* 
* There are examples in the AuthenicationController.java program in the com.techelevator.security.controller package
**********************************************************************************************************************/	
    static void logRequest(String message) {
    	Timestamp timestamp = new Timestamp(System.currentTimeMillis());
    	 
    	System.out.println(timestamp + " - " + message);
    }
}

