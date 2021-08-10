package com.techelevator.application.jdbcdao;

import com.techelevator.application.dao.CategoryDAO;
import com.techelevator.application.model.Category;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Component
@Service
public class CategoryJDBCDAO implements CategoryDAO {

    public static List<Category> categories = new ArrayList<>();
    public static Category category = new Category();

//----------------- NOT WRITTEN -------------------
    @Override
    public List<Category> categoryList() {
        return categories;
    }

//----------------- NOT WRITTEN -------------------
    @Override
    public Category getCategoryById(int id) {
        return category;
    }

//----------------- NOT WRITTEN -------------------
    @Override
    public Category getCategoryByName(String name) {
        for (Category theCategory : categories) {
            if (theCategory.getCategoryName() == name) {
                return theCategory;
            }
        }
        return null;
    }




}//END
