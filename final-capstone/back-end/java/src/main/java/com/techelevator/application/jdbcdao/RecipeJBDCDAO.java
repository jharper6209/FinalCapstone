package com.techelevator.application.jdbcdao;

import com.techelevator.application.dao.RecipeDAO;
import com.techelevator.application.model.Recipe;

import java.util.ArrayList;
import java.util.List;

public class RecipeJBDCDAO implements RecipeDAO {

    public static List<Recipe> recipes = new ArrayList<>();

//---------- List All Recipes ------------------------------
    @Override
    public List<Recipe> recipeList() {
        return recipes;
    }

//----------- Get a Recipe by the ID --------------------------
    @Override
    public Recipe getRecipeById(int id) {
        for (Recipe theRecipe : recipes) {
            if (theRecipe.getRecipeID() == id) {
                return theRecipe;
            }
        }
        return null;
    }

//----------- Get a Recipe by Name ---------------------------
    @Override
    public Recipe getRecipeByName(String name) {
        for (Recipe theRecipe : recipes) {
            if (theRecipe.getName() == name) {
                return theRecipe;
            }
    }
    return null;
}


} // END
