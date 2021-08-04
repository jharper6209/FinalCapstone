package com.techelevator.application.dao;

import com.techelevator.application.model.Ingredient;
import com.techelevator.application.model.Recipe;

import java.util.List;

public interface RecipeDAO {

    List<Recipe> recipeList();

    Recipe getRecipeById(int id);

    Recipe getRecipeByName(String name);








} // END
