/********************************************************************************************************************** 
* This will should contain Application API Controllers and related objects
**********************************************************************************************************************/

package com.techelevator.application.controller;

import com.techelevator.application.dao.IngredientDAO;
import com.techelevator.application.dao.RecipeDAO;
import com.techelevator.application.jdbcdao.IngredientJDBCDAO;
import com.techelevator.application.jdbcdao.RecipeJDBCDAO;
import com.techelevator.application.model.Recipe;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

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
    @RequestMapping(path = "/recipes", method = RequestMethod.GET)
    public List<Recipe> recipeList() {
        logRequest("Request to get all recipes - /recipes");
        return recipeDAO.recipeList();
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

