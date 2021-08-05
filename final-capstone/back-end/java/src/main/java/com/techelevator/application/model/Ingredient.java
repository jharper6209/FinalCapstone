package com.techelevator.application.model;

public class Ingredient {

    private long ingredientId;
    private String ingredientName;
    private long recipeId;


    // Constructor?


    public long getIngredientId() {
        return ingredientId;
    }
    public void setIngredientId(long ingredientId) {
        this.ingredientId = ingredientId;
    }

    public String getIngredientName() {
        return ingredientName;
    }

    public void setIngredientName(String ingredientName) {
        this.ingredientName = ingredientName;
    }

    public long getRecipeId() {
        return recipeId;
    }

    public void setRecipeId(long recipeId) {
        this.recipeId = recipeId;
    }

    @Override
    public String toString() {
        return "Ingredient{" +
                "ingredientId=" + ingredientId +
                ", ingredientName='" + ingredientName + '\'' +
                ", recipeId=" + recipeId +
                '}';
    }


}//END
