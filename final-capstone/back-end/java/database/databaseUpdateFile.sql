DROP TABLE IF EXISTS ingredient CASCADE;
DROP TABLE IF EXISTS category CASCADE;
DROP TABLE IF EXISTS recipe CASCADE;
DROP TABLE IF EXISTS directions CASCADE;

CREATE TABLE recipe (
recipe_id SERIAL NOT NULL,
category_id INTEGER NOT NULL,
recipe_name CHARACTER VARYING(50) NOT NULL,
image CHARACTER VARYING(100) NOT NULL,
CONSTRAINT pk_recipe_recipe_id PRIMARY KEY (recipe_id)
);

CREATE TABLE ingredient (
ingredient_id SERIAL NOT NULL,
ingredient_name CHARACTER VARYING(50) NOT NULL,
recipe_id INTEGER NOT NULL,
CONSTRAINT pk_ingredient_id PRIMARY KEY (ingredient_id)
);

CREATE TABLE category(
category_id SERIAL NOT NULL,
category_name CHARACTER VARYING(50) NOT NULL,
CONSTRAINT pk_category_category_id PRIMARY KEY (category_id)
);

CREATE TABLE directions (
step_id SERIAL NOT NULL,
recipe_id INTEGER NOT NULL,
step_directions VARCHAR (2500),
CONSTRAINT pk_step_id PRIMARY KEY (step_id) 
);

ALTER TABLE recipe ADD CONSTRAINT fk_category_id FOREIGN KEY (category_id) REFERENCES category(category_id);
ALTER TABLE ingredient ADD CONSTRAINT fk_recipe_recipe_id FOREIGN KEY (recipe_id) REFERENCES recipe(recipe_id);
ALTER TABLE directions ADD CONSTRAINT fk_recipe_recipe_id FOREIGN KEY (recipe_id) REFERENCES recipe(recipe_id);
/*ALTER TABLE recipe ADD CONSTRAINT fk_users_user_id FOREIGN KEY (user_id) REFERENCES users(user_id);*/

INSERT INTO category (category_name)
VALUES
('Gluten-Free'),
('Keto/Low Carb'), 
('No Restrictions'), 
('Vegetarian'), 
('Vegan');

INSERT INTO recipe (category_id, recipe_name, image)
VALUES(3, 'Beef and Mustard Pie', 'https://www.themealdb.com/images/media/meals/sytuqu1511553755.jpg'),
(2, 'Ayam Percik','https://www.themealdb.com/images/media/meals/020z181619788503.jpg'),
(4, 'Fettucine alfredo', 'https://www.themealdb.com/images/media/meals/uquqtu1511178042.jpg'),  
(5, 'Vegan Chocolate Cake', 'https://www.themealdb.com/images/media/meals/qxutws1486978099.jpg'),
(1, 'Arugula and Canadian Bacon Omelet', 'https://tinyimg.io/i/hJUwIvw.jpg'), 
(1, 'Baked Caramel Apple French Toast', 'http://tinyimg.io/i/pxMNudO.jpg'), 
(1, 'Quinoa Stuffed Pork Tenderloin', 'http://tinyimg.io/i/xx7nG2f.jpg'),
(1, 'Coconut Macaroons', 'http://tinyimg.io/i/dVRJfx8.jpg'), 
(1, 'Zucchini Lasagna', 'http://tinyimg.io/i/KhfrkNx.jpg');


INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('1kg Beef', 1);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('2 tbs Plain Flour', 1);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('2 tbs Rapeseed Oil', 1);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('200ml Red Wine', 1);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('400ml Beef Stock', 1);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('1 finely sliced Onion', 1);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('2 chopped Carrots', 1);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('3 sprigs of Thyme', 1);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('2 tbsMustard', 1);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('2 Egg Yolks', 1);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('400g Puff Pastry', 1);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('300g Green Beans', 1);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('25g Butter' , 1);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('Pinch of Salt', 1);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('Pinch of Pepper', 1);

INSERT INTO ingredient (ingredient_name ,recipe_id) VALUES ('6 Chicken Thighs', 2);
INSERT INTO ingredient (ingredient_name ,recipe_id) VALUES ('1 1/2 Challots' , 2);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('6 tbs Ginger', 2);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('8 Garlic Cloves', 2);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('2 tsp Cayenne pepper', 2);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('1 1/2 tbs Tumeric', 2);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('1 1/2 tbs Cumin', 2);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('1 1/2 tbs Coriander', 2);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('1 1/2 cup Fennel', 2);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('2 tbs Tamarind Paste', 2);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('1 8oz can Coconut Milk', 2);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('1 tsp Sugar', 2);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('1 cup Water', 2);

INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('1 1/4 cup Self Rising Flour', 3);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('1/2 cup Coco Sugar', 3);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('1/3 cup raw Cacao', 3);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('1 tsp Baking Powder', 3);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('2 Flax Eggs', 3);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('1/2 cup Almond Milk', 3);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('1 tsp Vanilla', 3);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('1/2 cup boiling Water', 3);

INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('227g Heavy Cream', 4);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('25g Butter' , 4);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('1 tsp Corn Flour', 4);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('100g Parmasean Cheese', 4);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('Pinch of grated Nutmeg', 4);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('250g Fettucine', 4);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('Rough chopped Parsley', 4);

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
INSERT INTO directions (recipe_id, step_directions) VALUES (4, 'Put the cheese and nutmeg in a small bowl and add a good grinding of black pepper, then stir everything together (don?t add any salt at this stage)');
INSERT INTO directions (recipe_id, step_directions) VALUES (4, 'Put the pasta in another pan with 2 tsp salt, pour over some boiling water and cook following pack instructions (usually 3-4 mins). When cooked, scoop some of the cooking water into a heatproof jug or mug and drain the pasta, but not too thoroughly');
INSERT INTO directions (recipe_id, step_directions) VALUES (4, 'Add the pasta to the pan with the clotted cream mixture, then sprinkle over the cheese and gently fold everything together over a low heat using a rubber spatula. When combined, splash in 3 tbsp of the cooking water. At first, the pasta will look wet and sloppy: keep stirring until the water is absorbed and the sauce is glossy. Check the seasoning before transferring to heated bowls. Sprinkle over some chives or parsley, then serve immediately.');

INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('2 tbsp Butter', 5);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('1 cup Arugula', 5);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('4 Cherry Tomatoes', 5);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('2 tbsp Red Onions', 5);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('3 Egg Whites', 5);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('Pinch of Kosher Salt', 5);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('Pinch of Black Pepper', 5);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('1 tbsp Basil', 5);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('1 slice Canadian Bacon', 5);

INSERT INTO directions (recipe_id, step_directions) VALUES (5, 'Melt 1 tablespoon butter in 10-inch nonstick skillet over medium high heat.');
INSERT INTO directions (recipe_id, step_directions) VALUES (5, 'Add arugula, tomatoes and onion and cook for 1 minute.');
INSERT INTO directions (recipe_id, step_directions) VALUES (5, 'Remove from skillet and set aside. Wipe skillet clean.');
INSERT INTO directions (recipe_id, step_directions) VALUES (5, 'Whisk egg whites with pinch of kosher salt and black pepper.');
INSERT INTO directions (recipe_id, step_directions) VALUES (5, 'Melt remaining butter in skillet over medium heat. ');
INSERT INTO directions (recipe_id, step_directions) VALUES (5, 'Pour in eggs and cook for about 5 seconds.');
INSERT INTO directions (recipe_id, step_directions) VALUES (5, 'Lift cooked egg up around edges to allow uncooked egg to flow underneath, until omelet is set but top is still moist, about 2 to 3 minutes.');
INSERT INTO directions (recipe_id, step_directions) VALUES (5, 'Arrange vegetables, basil and Canadian Bacon on one half of omelet and carefully fold over.');
INSERT INTO directions (recipe_id, step_directions) VALUES (5, 'Cook for an additional 1 to 2 minutes, or until heated through. ');
INSERT INTO directions (recipe_id, step_directions) VALUES (5, 'Transfer omelet to plate and serve immediately.');

INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('1 loaf Gluten-free Bread, torn into 1 inch pieces', 6);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('1 cup Pumpkin Puree', 6);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('1/4 cup Flaxmeal', 6);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('¾ c. Warm Water', 6);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('1 3/4 cup Dairy-free Milk', 6);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('1 tsp Tapioca Starch', 6);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('1/4 cup Maple Syrup', 6);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('? cup Margarine, chilled', 6);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('4 Caramel Apple Chewy Bars, quartered', 6);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('1/3 cup pumpkin seeds', 6);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('2 medjool dates, pitted', 6);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('1/4 cup Gluten-Free All Purpose Flour', 6);

INSERT INTO directions (recipe_id, step_directions) VALUES (6, 'Put the torn bread into a large bowl.');
INSERT INTO directions (recipe_id, step_directions) VALUES (6, 'In another bowl whisk together the pumpkin puree, flaxmeal and warm water mixture (this is your “egg”), dairy free milk, tapioca starch, maple syrup, cinnamon and vanilla extract. Pour over the bread.');
INSERT INTO directions (recipe_id, step_directions) VALUES (6, 'Using your hands, gently turn the bread to coat every pieces with the pumpkin mixture.');
INSERT INTO directions (recipe_id, step_directions) VALUES (6, 'Pour into a rectangular baker or a 9×13 glass baking dish.');
INSERT INTO directions (recipe_id, step_directions) VALUES (6, 'Cover with plastic and refrigerate overnight.');
INSERT INTO directions (recipe_id, step_directions) VALUES (6, 'When ready to bake, preheat oven to 350?F.');
INSERT INTO directions (recipe_id, step_directions) VALUES (6, 'Make the caramel apple topping by adding the margarine, caramel apple chewy bars, pumpkin seeds, medjool dates, and gluten-free all purpose flour to the bowl of a food processor and pulsing until it is crumbly. Sprinkle over the bread mixture and then cover the dish with foil.');
INSERT INTO directions (recipe_id, step_directions) VALUES (6, 'Bake for 30 minutes. Remove the foil and bake an additional 20 minutes until cooked through.');
INSERT INTO directions (recipe_id, step_directions) VALUES (6, 'Serve with powdered sugar sprinkle on top and additional maple syrup.');

INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('½ cup uncooked Quinoa', 7);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('½ cup water', 7);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('2 tbsp olive oil', 7);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('½ onion, chopped', 7);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('2 cloves garlic, chopped', 7);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('1 small apples - peeled, cored and chopped', 7);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('¼ cup raisins', 7);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('2 tbsp pine nuts', 7);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('4 mushrooms, chopped', 7);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('2 tbsp white wine', 7);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('1 (1 pound) pork tenderloin', 7);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('1 pinch ground cinnamon', 7);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('1 pinch garam masala', 7);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('salt and ground black pepper to taste', 7);


INSERT INTO directions (recipe_id, step_directions) VALUES (7, 'Bring the quinoa and water to a boil in a saucepan over medium-high heat. Reduce heat to low, cover, and simmer until the quinoa is tender, and the water has been absorbed, about 15 minutes.');
INSERT INTO directions (recipe_id, step_directions) VALUES (7, 'Heat the olive oil in a skillet over medium heat. Cook and stir the onion, garlic, apples, raisins, pine nuts, and mushrooms until the onion has softened and turned translucent, about 8 minutes.');
INSERT INTO directions (recipe_id, step_directions) VALUES (7, 'Stir in the white wine, and cook another minute until the liquid has evaporated. Combine the apple mixture and quinoa until evenly mixed; set aside.');
INSERT INTO directions (recipe_id, step_directions) VALUES (7, 'Preheat an oven to 425 degrees F (220 degrees C).');
INSERT INTO directions (recipe_id, step_directions) VALUES (7, 'Cut the pork tenderloin from one side through the middle horizontally to within one-half inch of the other side. Open the two sides and spread them out like an open book.');
INSERT INTO directions (recipe_id, step_directions) VALUES (7, 'Place between two sheets of heavy plastic (resealable freezer bags work well) on a solid, level surface. Firmly pound the tenderloin with the smooth side of a meat mallet to a thickness of 1/2 inch.');
INSERT INTO directions (recipe_id, step_directions) VALUES (7, 'Season the tenderloin on both sides with cinnamon, garam masala, salt, and black pepper. Spoon the quinoa filling onto the tenderloin, then roll up and secure with kitchen twine or toothpicks. Place onto a roasting pan.');
INSERT INTO directions (recipe_id, step_directions) VALUES (7, 'Roast in the preheated oven until the pork is no 
longer pink in the center, about 35 minutes. An instant-read thermometer inserted into the center of the filling should read 145 degrees F (63 degrees C).');
INSERT INTO directions (recipe_id, step_directions) VALUES (7, 'Cover with aluminum foil, and let rest for 10 minutes before slicing.');

INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('2?½ cups shredded coconut', 8);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('1 cup white sugar', 8);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('6 egg whites', 8);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('1 tbsp cornstarch', 8);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('¼ tsp almond extract', 8);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('1?½ cups halved red candied cherries', 8);

INSERT INTO directions (recipe_id, step_directions) VALUES (8, 'Preheat oven to 350 degrees F (175 degrees C). Line 2 cookie sheets with parchment paper.');
INSERT INTO directions (recipe_id, step_directions) VALUES (8, 'In small bowl, combine sugar and cornstarch.');
INSERT INTO directions (recipe_id, step_directions) VALUES (8, 'In a large metal bowl, combine egg whites with almond extract. Place the bowl over a pan of simmering water. Stir in the sugar mixture.');
INSERT INTO directions (recipe_id, step_directions) VALUES (8, 'Whip with an electric mixer until thick and stiff, about 15 minutes. Fold in coconut. Remove from heat, and let cool for 5 minutes.');
INSERT INTO directions (recipe_id, step_directions) VALUES (8, 'Place mixture in a pastry bag fitted with a large star tip. Press out dough about 1 1/2 inches apart onto cookie sheets. Place 1/2 a cherry into the top of each cookie.');
INSERT INTO directions (recipe_id, step_directions) VALUES (8, 'Bake for 18 to 20 minutes or until lightly colored. Let cool on baking sheets for a minute before removing to wire racks.');

INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('4 large zucchini', 9);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('2 pounds ground beef', 9);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('24 ounces pasta sauce', 9);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('15 oz ricotta cheese', 9);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('1 cup shredded parmesan regianno', 9);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('1 1/2 cups mozzarella', 9);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('1 egg', 9);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('salt and pepper', 9);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('small handful fresh parsley and basil, chopped', 9);

INSERT INTO directions (recipe_id, step_directions) VALUES (9, 'Preheat the oven to 400 degrees fahrenheit (200 degrees celsius).');
INSERT INTO directions (recipe_id, step_directions) VALUES (9, 'Slice the zucchini lengthwise into slices, thin or thick. Set aside.');
INSERT INTO directions (recipe_id, step_directions) VALUES (9, 'Add the ground beef to a large pan over medium high heat. Finely break down the ground beef with a spatula and pan fry it until browned and no longer pink.');
INSERT INTO directions (recipe_id, step_directions) VALUES (9, 'Pour the pasta sauce on top of the ground beef (remember to reserve 1/2 cup) and stir together, then remove from heat.');
INSERT INTO directions (recipe_id, step_directions) VALUES (9, 'In a medium bowl, make the ricotta mix by stirring together the ricotta cheese, parmesan, egg, salt and pepper.');
INSERT INTO directions (recipe_id, step_directions) VALUES (9, 'Spread 1/2 cup of pasta sauce onto the bottom of your 9x13-inch casserole dish.');
INSERT INTO directions (recipe_id, step_directions) VALUES (9, 'Add your zucchini slices on top of the pasta sauce. They can overlap or you can place them side-by-side.');
INSERT INTO directions (recipe_id, step_directions) VALUES (9, 'Top the zucchini with 1/2 of the bolognese sauce, and evenly spread 1/2 the ricotta mix on top of that.');
INSERT INTO directions (recipe_id, step_directions) VALUES (9, 'Add 1/2 cup of grated mozzarella on top of the ricotta, along with a sprinkle of chopped parsley and basil.');
INSERT INTO directions (recipe_id, step_directions) VALUES (9, 'Repeat these layers one more time.');
INSERT INTO directions (recipe_id, step_directions) VALUES (9, 'Top the lasagna with a final layer of zucchini slices, a sprinkle of chopped parsley and basil, and 1/2 cup mozzarella cheese.');
INSERT INTO directions (recipe_id, step_directions) VALUES (9, 'Place the lasagna in the oven and cook for 40-45 minutes. Broil for a couple of minutes to get a nice golden top.');
INSERT INTO directions (recipe_id, step_directions) VALUES (9, 'Garnish with whole basil leaves and serve.');
