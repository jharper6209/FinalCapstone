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


//-------------------- List all Ingredients --------------------------------------
    @Override
    public List<Ingredient> ingredientList() {
        String sqlSelectIngredients = "SELECT ingredient_id, ingredient_name, recipe_id FROM ingredient;";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectIngredients);
        while (results.next()) {
            Ingredient currentIngredients = new Ingredient();
            currentIngredients.setIngredientId(results.getInt("ingredient_id"));
            currentIngredients.setIngredientName(results.getString("ingredient_name"));
            currentIngredients.setRecipeId(results.getInt("recipe_id"));
            ingredients.add(currentIngredients);
        }
        return ingredients;
    }
//----------- Get ingredients by RecipeId -----------------------
    @Override
    public List<Ingredient> getIngredientsByRecipeId(int recipeId) {
        String sqlSelectIngredients = "SELECT ingredient_name FROM ingredient WHERE recipe_id = ?";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectIngredients, recipeId);
        while (results.next()) {
            Ingredient recipeIngredients = new Ingredient();
            recipeIngredients.setIngredientName(results.getString("ingredient_name"));
            ingredients.add(recipeIngredients);
            }

        return ingredients;
    }

//----------------------- Get a Ingredient by the ID --------------------------------
    @Override
    public Ingredient getIngredientById(int id) {
        for (Ingredient theIngredient : ingredients) {
            if (theIngredient.getIngredientId() == id) {
                return theIngredient;
            }
        }
        return null;
    }

//----------- Get a Ingredient by Name ---------------------------
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
