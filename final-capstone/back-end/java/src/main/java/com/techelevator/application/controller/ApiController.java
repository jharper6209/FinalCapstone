/********************************************************************************************************************** 
* This will should contain Application API Controllers and related objects
**********************************************************************************************************************/

package com.techelevator.application.controller;

import com.techelevator.application.dao.IngredientDAO;
import com.techelevator.application.dao.RecipeDAO;
import com.techelevator.application.jdbcdao.IngredientJDBCDAO;
import com.techelevator.application.jdbcdao.RecipeJDBCDAO;
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

    public ApiController(RecipeDAO theRecipe, IngredientDAO theIngredient) {
        recipeDAO = theRecipe;
        ingredientDAO = theIngredient;

    }
/**********************************************************************************************************************
* Put your Application API Controllers here
**********************************************************************************************************************/

// List all recipes
    @RequestMapping(path = "/recipe", method = RequestMethod.GET)
    public List<Recipe> recipeList() {
        logRequest("Request to get all recipes - /recipe");
        return recipeDAO.recipeList();
    }

// List all ingredients
    @RequestMapping(path = "/ingredient", method = RequestMethod.GET)
    public List<Ingredient> ingredientListList() {
    logRequest("Request to get all ingredients - /ingredient");
    return ingredientDAO.ingredientList();
}

// Get ingredients by recipeId
    @RequestMapping(path = "/ingredient/recipeid/{id}", method = RequestMethod.GET)
    public List<Ingredient> getIngredientsByRecipeId(@PathVariable int recipeId) {
    logRequest("Request to get all ingredientsByRecipeId - /ingredient/recipe/{id}");
    return ingredientDAO.getIngredientsByRecipeId(recipeId);
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

