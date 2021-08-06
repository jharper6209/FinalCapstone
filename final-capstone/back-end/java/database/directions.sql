DROP TABLE IF EXISTS directions CASCADE;

CREATE TABLE directions (
step_id SERIAL NOT NULL,
recipe_id INTEGER NOT NULL,
step_directions VARCHAR (2500),
CONSTRAINT pk_step_id PRIMARY KEY (step_id) 
);

ALTER TABLE directions ADD CONSTRAINT fk_recipe_recipe_id FOREIGN KEY (recipe_id) REFERENCES recipe(recipe_id);

INSERT INTO directions (recipe_id, step_directions) VALUES (1, 'Preheat the oven to 150C/300F');
INSERT INTO directions (recipe_id, step_directions) VALUES (1, 'Toss the beef and flour together in a bowl with some salt and black pepper');
INSERT INTO directions (recipe_id, step_directions) VALUES (1, 'Heat a large casserole until hot, add half of the rapeseed oil and enough of the beef to just cover the bottom of the casserole');
INSERT INTO directions (recipe_id, step_directions) VALUES (1, 'Fry until browned on each side, then remove and set aside. Repeat with the remaining oil and beef');
INSERT INTO directions (recipe_id, step_directions) VALUES (1, 'Return the beef to the pan, add the wine and cook until the volume of liquid has reduced by half, then add the stock, onion, carrots, thyme and mustard, and season well with salt and pepper');
INSERT INTO directions (recipe_id, step_directions) VALUES (1, 'Cover with a lid and place in the oven for two hours');
INSERT INTO directions (recipe_id, step_directions) VALUES (1, 'Remove from the oven, check the seasoning and set aside to cool. Remove the thyme');
INSERT INTO directions (recipe_id, step_directions) VALUES (1, 'When the beef is cool and youre ready to assemble the pie, preheat the oven to 200C/400F');
INSERT INTO directions (recipe_id, step_directions) VALUES (1, 'Transfer the beef to a pie dish, brush the rim with the beaten egg yolks and lay the pastry over the top. Brush the top of the pastry with more beaten egg');
INSERT INTO directions (recipe_id, step_directions) VALUES (1, 'Trim the pastry so there is just enough excess to crimp the edges, then place in the oven and bake for 30 minutes, or until the pastry is golden-brown and cooked through');
INSERT INTO directions (recipe_id, step_directions) VALUES (1, 'For the green beans, bring a saucepan of salted water to the boil, add the beans and cook for 4-5 minutes, or until just tender');
INSERT INTO directions (recipe_id, step_directions) VALUES (1, 'Drain and toss with the butter, then season with black pepper. To serve, place a large spoonful of pie onto each plate with some green beans alongside');

INSERT INTO directions (recipe_id, step_directions) VALUES (2, 'In a blender, add the ingredients for the spice paste and blend until smooth');
INSERT INTO directions (recipe_id, step_directions) VALUES (2, 'Over medium heat, pour the spice paste in a skillet or pan and fry for 10 minutes until fragrant. Add water or oil 1 tablespoon at a time if the paste becomes too dry. Do not burn the paste. Lower the fire slightly if needed');
INSERT INTO directions (recipe_id, step_directions) VALUES (2, 'Add the cloves, cardamom, tamarind pulp, coconut milk, water, sugar and salt. Turn the heat up and bring the mixture to boil. Turn the heat to medium low and simmer for 10 minutes. Stir occasionally. It will reduce slightly. This is the marinade/sauce, so taste and adjust seasoning if necessary. Do not worry if it is slightly bitter. It will go away when roasting');
INSERT INTO directions (recipe_id, step_directions) VALUES (2, 'When the marinade/sauce has cooled, pour everything over the chicken and marinate overnight to two days');
INSERT INTO directions (recipe_id, step_directions) VALUES (2, 'Preheat the oven to 425 F');
INSERT INTO directions (recipe_id, step_directions) VALUES (2, 'Remove the chicken from the marinade. Spoon the marinade onto a greased (or aluminum lined) baking sheet. Lay the chicken on top of the sauce (make sure the chicken covers the sauce and the sauce is not exposed or it will  burn) and spread the remaining marinade on the chicken. Roast for 35-45 minutes or until internal temp of the thickest part of chicken is at least 175 F');
INSERT INTO directions (recipe_id, step_directions) VALUES (2, 'Let chicken rest for 5 minutes. Brush the chicken with some of the oil. Serve chicken with the sauce over steamed rice (or coconut rice)');

INSERT INTO directions (recipe_id, step_directions) VALUES (3, 'Simply mix all dry ingredients with wet ingredients and blend altogether');
INSERT INTO directions (recipe_id, step_directions) VALUES (3, 'Bake for 45 min on 180 degrees');
INSERT INTO directions (recipe_id, step_directions) VALUES (3, 'Decorate with some melted vegan chocolate ');

INSERT INTO directions (recipe_id, step_directions) VALUES (4, 'In a medium saucepan, stir the clotted cream, butter and cornflour over a low-ish heat and bring to a low simmer. Turn off the heat and keep warm');
INSERT INTO directions (recipe_id, step_directions) VALUES (4, 'Put the cheese and nutmeg in a small bowl and add a good grinding of black pepper, then stir everything together (don’t add any salt at this stage)');
INSERT INTO directions (recipe_id, step_directions) VALUES (4, 'Put the pasta in another pan with 2 tsp salt, pour over some boiling water and cook following pack instructions (usually 3-4 mins). When cooked, scoop some of the cooking water into a heatproof jug or mug and drain the pasta, but not too thoroughly');
INSERT INTO directions (recipe_id, step_directions) VALUES (4, 'Add the pasta to the pan with the clotted cream mixture, then sprinkle over the cheese and gently fold everything together over a low heat using a rubber spatula. When combined, splash in 3 tbsp of the cooking water. At first, the pasta will look wet and sloppy: keep stirring until the water is absorbed and the sauce is glossy. Check the seasoning before transferring to heated bowls. Sprinkle over some chives or parsley, then serve immediately.');
