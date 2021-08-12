/*
package com.techelevator.application.jdbcdao;

import com.techelevator.application.dao.UserRecipeDAO;
import com.techelevator.application.model.Recipe;
import com.techelevator.application.model.UserRecipe;
import com.techelevator.security.model.User;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;


@Component
@Service
public class UserRecipeJDBCDAO implements UserRecipeDAO {

    private JdbcTemplate jdbcTemplate;

    public UserRecipeJDBCDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public UserRecipe addRecipeToUserId(Recipe recipeId, User userId) {
        String sqlAddRecipeToUserId = " INSERT INTO user_recipe (recipe_id, user_id) " +
                                      " VALUES (? , ?) ; " ;

        jdbcTemplate.queryForObject(sqlAddRecipeToUserId, recipeId.setRecipeID(), userId.setId());

        return addRecipeToUserId(recipeId, userId);
    }
}//END
*/
