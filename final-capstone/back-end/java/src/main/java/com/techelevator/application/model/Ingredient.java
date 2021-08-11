package com.techelevator.application.model;

public class Ingredient {

    private long ingredientId;
    private String measurement;
    private String ingredientName;
    private long recipeId;


    // Constructor?


    public long getIngredientId() {
        return ingredientId;
    }

    public void setIngredientId(long ingredientId) {
        this.ingredientId = ingredientId;
    }

    public String getMeasurement() {
        return measurement;
    }

    public void setMeasurement(String measurement) {
        this.measurement = measurement;
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
                ", measurement='" + measurement + '\'' +
                ", ingredientName='" + ingredientName + '\'' +
                ", recipeId=" + recipeId +
                '}';
    }


}//END
