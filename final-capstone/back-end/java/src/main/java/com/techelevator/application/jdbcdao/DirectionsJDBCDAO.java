package com.techelevator.application.jdbcdao;

import com.techelevator.application.dao.DirectionsDAO;
import com.techelevator.application.model.Directions;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Component
@Service
public class DirectionsJDBCDAO implements DirectionsDAO {

    private JdbcTemplate jdbcTemplate;

    public DirectionsJDBCDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    List<Directions> directions = new ArrayList<Directions>();

    @Override
    public List<Directions> directionsList() {
        return null;
    }

    @Override
    public List<Directions> getDirectionsByRecipeId(int recipeId) {
        String sqlDisplayDirections = "SELECT step_id, recipe_id, step_directions FROM directions WHERE recipe_id = ?";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sqlDisplayDirections, recipeId);
        while (results.next()) {
            Directions preparationSteps = new Directions();
            preparationSteps.setStepId(results.getInt("step_id"));
            preparationSteps.setRecipeId(results.getInt("recipe_id"));
            preparationSteps.setStepDirections(results.getString("step_directions"));
            directions.add(preparationSteps);
        }
        return directions;
    }
}
