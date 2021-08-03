package com.techelevator.application.jdbcdao;

import com.techelevator.application.dao.IngredientDAO;
import com.techelevator.application.model.Ingredient;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Component
@Service
public class IngredientJDBCDAO implements IngredientDAO {

    public static List<Ingredient> ingredients = new ArrayList<>();

    @Override
    public List<Ingredient> ingredientList() {
        return ingredients;
    }

    @Override
    public Ingredient getIngredientById(int id) {
        for (Ingredient theIngredient : ingredients) {
            if (theIngredient.getIngredientId() == id) {
                return theIngredient;
            }
        }
        return null;
    }

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
