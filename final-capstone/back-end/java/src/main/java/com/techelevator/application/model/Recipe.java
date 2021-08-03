package com.techelevator.application.model;

public class Recipe {

    private int recipeID;
    private String name;
    private String image;               //Unsure if image should be a String or not?

    // Constructor?
    public Recipe(int recipeID, String name) {
        this.recipeID = recipeID;
        this.name = name;
    }

    public Recipe() {

    }

    public int getRecipeID() {
        return recipeID;
    }

    public void setRecipeID(int recipeID) {
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

    @Override
    public String toString() {
        return "Recipe{" +
                "recipeID=" + recipeID +
                ", name='" + name + '\'' +
                ", image='" + image + '\'' +
                '}';
    }



}//END

