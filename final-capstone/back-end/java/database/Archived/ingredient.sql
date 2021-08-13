DROP TABLE IF EXISTS ingredient CASCADE;

CREATE TABLE ingredient (
ingredient_id SERIAL NOT NULL,
ingredient_name CHARACTER VARYING(50) NOT NULL,
recipe_id INTEGER NOT NULL,
CONSTRAINT pk_ingredient_id PRIMARY KEY (ingredient_id)
);

ALTER TABLE ingredient ADD CONSTRAINT fk_recipe_recipe_id FOREIGN KEY (recipe_id) REFERENCES recipe(recipe_id);

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