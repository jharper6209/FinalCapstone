package com.techelevator.application.jdbcdao;

import com.techelevator.application.dao.RecipeDAO;
import com.techelevator.application.model.Recipe;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import javax.sql.DataSource;
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

    //---------- List All Recipes ------------------------------
    @Override
    public List<Recipe> recipeList() {
        String sqlSelectRecipes = "SELECT recipeid, name FROM recipe;";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectRecipes);
        while (results.next()) {
            Recipe currentRecipe = new Recipe();
            currentRecipe.setRecipeID(results.getInt("recipeid"));
            currentRecipe.setName(results.getString("name"));
            recipes.add(currentRecipe);
        }
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

//------ HELPER METHOD -----------------------------------------------------



} // END
