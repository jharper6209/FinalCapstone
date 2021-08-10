package com.techelevator.application.jdbcdao;

import com.techelevator.application.dao.RecipeDAO;
import com.techelevator.application.model.Directions;
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

    public RecipeJDBCDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

//---------- List All Recipes ------------------------------
    @Override
    public List<Recipe> recipeList() {
        List<Recipe> recipes = new ArrayList<>();
        String sqlSelectRecipes = "SELECT * FROM recipe;";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectRecipes);
        while (results.next()) {
            Recipe currentRecipe = new Recipe();
            currentRecipe.setRecipeID(results.getLong("recipe_id"));
            currentRecipe.setCategoryId(results.getInt("category_id"));
            currentRecipe.setName(results.getString("recipe_name"));
            currentRecipe.setImage(results.getString("image"));
            recipes.add(currentRecipe);
        }
        return recipes;
    }

//----------- Get Recipe by Category ID ----------------------------
    @Override
    public List<Recipe> getRecipeByCategoryId(int categoryId) {
        List<Recipe> recipes = new ArrayList<>();
        String sqlDisplayDirections = "SELECT * FROM recipe WHERE category_id = ?";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sqlDisplayDirections, categoryId);
        while (results.next()) {
            Recipe recipeNameByCategoryId = new Recipe();
            recipeNameByCategoryId.setName(results.getString("recipe_name"));
            recipeNameByCategoryId.setRecipeID(results.getLong("recipe_id"));
            recipeNameByCategoryId.setCategoryId(results.getInt("category_id"));
            recipes.add(recipeNameByCategoryId);
        }
        return recipes;
    }




//----------- Get a Recipe by the ID --------------------------
// ---- NOT WRITTEN
    @Override
    public Recipe getRecipeById(long id) {

        return null;
    }

//----------- Get a Recipe by Name ---------------------------
//---- NOT WRITTEN
    @Override
    public Recipe getRecipeByName(String name) {

    return null;
}


//------ HELPER METHOD -----------------------------------------------------



} // END
