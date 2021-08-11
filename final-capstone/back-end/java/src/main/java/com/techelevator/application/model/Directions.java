package com.techelevator.application.model;

public class Directions {

    private int stepId;
    private int recipeId;
    private String stepDirections;

    public Directions() {
    }

    public Directions(int stepId, int recipeId, String stepDirections) {
        this.stepId = stepId;
        this.recipeId = recipeId;
        this.stepDirections = stepDirections;
    }

    @Override
    public String toString() {
        return "Directions{" +
                "stepId=" + stepId +
                ", recipeId=" + recipeId +
                ", stepDirections='" + stepDirections + '\'' +
                '}';
    }

    public int getStepId() {
        return stepId;
    }

    public void setStepId(int stepId) {
        this.stepId = stepId;
    }

    public int getRecipeId() {
        return recipeId;
    }

    public void setRecipeId(int recipeId) {
        this.recipeId = recipeId;
    }

    public String getStepDirections() {
        return stepDirections;
    }

    public void setStepDirections(String stepDirections) {
        this.stepDirections = stepDirections;
    }
}
