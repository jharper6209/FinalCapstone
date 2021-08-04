package com.techelevator.application.jdbcdao;

import com.techelevator.application.dao.RecipeDAO;
import com.techelevator.application.model.Recipe;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Component
@Service
public class RecipeJDBCDAO implements RecipeDAO {

    private JdbcTemplate jdbcTemplate;

   /* public RecipeJDBCDAO(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }*/

    public RecipeJDBCDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }



    public static List<Recipe> recipes = new ArrayList<>();
    public static List<Recipe> ingredients = new ArrayList<Recipe>();

//---------- List All Recipes ------------------------------
    @Override
    public List<Recipe> recipeList() {
        String sqlSelectRecipes = "SELECT recipe_id, recipe_name FROM recipe;";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectRecipes);
        while (results.next()) {
            Recipe currentRecipe = new Recipe();
            currentRecipe.setRecipeID(results.getInt("recipe_id"));
            currentRecipe.setName(results.getString("recipe_name"));
            recipes.add(currentRecipe);
        }
        return recipes;
    }

//----------- Get ingredients by RecipeId -----------------------

    public List<Recipe> getIngredientsByRecipeId() {
        String sqlSelectIngredients = "SELECT ingredient_name FROM ingredient WHERE recipe_id = ?";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectIngredients);
    while (results.next()) {
        Recipe recipeIngredients = new Recipe();
        recipeIngredients.setIngredients(results.getString("ingredient_name"));
        if (!results.getString("ingredient_name").equals("")) {
            ingredients.add(recipeIngredients);
        }
    }
    return ingredients;
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


//------ HELPER METHOD -----------------------------------------------------



} // END
