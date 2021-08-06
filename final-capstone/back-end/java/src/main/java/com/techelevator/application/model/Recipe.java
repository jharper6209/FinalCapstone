package com.techelevator.application.model;

public class Recipe {

    private long recipeID;
    private String categoryId;
    private String name;
    private String image;               //Unsure if image should be a String or not?

    // Constructor?
    public Recipe(int recipeID, String name) {
        this.recipeID = recipeID;
        this.name = name;
    }

    public Recipe() {

    }


    public long getRecipeID() {
        return recipeID;
    }

    public void setRecipeID(long recipeID) {
        this.recipeID = recipeID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(String categoryId) {
        this.categoryId = categoryId;
    }

    @Override
    public String toString() {
        return "Recipe{" +
                "recipeID=" + recipeID +
                ", name='" + name + '\'' +
                ", image='" + image + '\'' +
                '}';
    }


}//END


