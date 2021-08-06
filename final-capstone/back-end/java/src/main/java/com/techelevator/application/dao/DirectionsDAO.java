package com.techelevator.application.dao;

import com.techelevator.application.model.Directions;

import java.util.List;

public interface DirectionsDAO {

    List<Directions> directionsList();

    List<Directions> getDirectionsByRecipeId (int recipeId);

    }
