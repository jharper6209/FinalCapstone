package com.techelevator.application.dao;

import com.techelevator.application.model.Category;


import java.util.List;

public interface CategoryDAO {

    List<Category> categoryList();

    Category getCategoryById(int id);

    Category getCategoryByName(String name);

}//END
