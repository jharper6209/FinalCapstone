package com.techelevator.application.jdbcdao;

import com.techelevator.application.dao.CategoryDAO;
import com.techelevator.application.model.Category;

import java.util.ArrayList;
import java.util.List;

public class CategoryJDBCDAO implements CategoryDAO {

    public static List<Category> categories = new ArrayList<>();

    @Override
    public List<Category> categoryList() {
        return categories;
    }

    @Override
    public Category getCategoryById(int id) {
        for (Category theCategory : categories) {
            if (theCategory.getCategoryId() == id) {
                return theCategory;
            }
        }
        return null;
    }

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
