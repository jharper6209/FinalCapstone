package com.techelevator.application.jdbcdao;

import com.techelevator.application.dao.IngredientDAO;
import com.techelevator.application.model.Ingredient;
import com.techelevator.application.model.Recipe;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Component
@Service
public class IngredientJDBCDAO implements IngredientDAO {

    private JdbcTemplate jdbcTemplate;

    public IngredientJDBCDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public static List<Ingredient> ingredients = new ArrayList<>();
    public static Ingredient ingredient = new Ingredient();

//-------------------- List all Ingredients --------------------------------------
    @Override
    public List<Ingredient> ingredientList() {
        String sqlSelectIngredients = "SELECT ingredient_id, ingredient_name, recipe_id FROM ingredient ";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectIngredients);
        while (results.next()) {
            Ingredient currentIngredients = new Ingredient();
            currentIngredients.setIngredientId(results.getLong("ingredient_id"));
            currentIngredients.setIngredientName(results.getString("ingredient_name"));
            currentIngredients.setRecipeId(results.getLong("recipe_id"));
            ingredients.add(currentIngredients);
        }
        return ingredients;
    }

//----------- Get ingredients by RecipeId -----------------------
    @Override
    public List<Ingredient> getIngredientsByRecipeId(long recipeId) {
        String sqlSelectIngredients = " SELECT ingredient_id, ingredient_name, recipe_id FROM ingredient WHERE recipe_id = ? ";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectIngredients, recipeId);

        while (results.next()) {
            Ingredient recipeIngredients = new Ingredient();
            recipeIngredients.setIngredientId(results.getLong("ingredient_id"));
            recipeIngredients.setIngredientName(results.getString("ingredient_name"));
            recipeIngredients.setRecipeId(results.getLong("recipe_id"));
            ingredients.add(recipeIngredients);
            }
        return ingredients;
    }

//----------------------- Get an ingredient by the IngredientId --------------------------------
    @Override
    public Ingredient getIngredientById(long ingredientId) {
        String sqlGetIngredient = " SELECT * FROM ingredient WHERE ingredient_id = ? ";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sqlGetIngredient, ingredientId);
        Ingredient theIngredient = new Ingredient();
        while (results.next()) {
            theIngredient.setIngredientId(results.getLong("ingredient_id"));
            theIngredient.setIngredientName(results.getString("ingredient_name"));
            theIngredient.setRecipeId(results.getLong("recipe_id"));
        }
        return theIngredient;

    }

//----------- Get a Ingredient by Name ---------------------------
//----------------- NOT WRITTEN -------------------
    @Override
    public Ingredient getIngredientByName(String name) {
        for (Ingredient theIngredient : ingredients) {
            if (theIngredient.getIngredientName() == name) {
                return theIngredient;
            }
        }
        return null;
    }


}//END
