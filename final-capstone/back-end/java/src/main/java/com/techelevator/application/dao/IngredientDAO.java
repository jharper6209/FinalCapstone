package com.techelevator.application.dao;

import com.techelevator.application.model.Ingredient;
import com.techelevator.application.model.Recipe;

import java.util.List;

public interface IngredientDAO {

    List<Ingredient> ingredientList();

    Ingredient getIngredientById(long ingredientId);

    Ingredient getIngredientByName(String name);

    List<Ingredient> getIngredientsByRecipeId(long recipeId);



}//END
