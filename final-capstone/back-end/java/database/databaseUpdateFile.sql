DROP TABLE IF EXISTS ingredient CASCADE;
DROP TABLE IF EXISTS category CASCADE;
DROP TABLE IF EXISTS recipe CASCADE;

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

ALTER TABLE recipe ADD CONSTRAINT fk_category_id FOREIGN KEY (category_id) REFERENCES category(category_id);
ALTER TABLE ingredient ADD CONSTRAINT fk_recipe_recipe_id FOREIGN KEY (recipe_id) REFERENCES recipe(recipe_id);


INSERT INTO category (category_name)
VALUES
('Beef'),
('Chicken'), 
('Pasta'), 
('Vegan');

INSERT INTO recipe (category_id, recipe_name, image)
VALUES(1, 'Beef and Mustard Pie', 'https://www.themealdb.com/images/media/meals/sytuqu1511553755.jpg'),
(2, 'Ayam Percik','https://www.themealdb.com/images/media/meals/020z181619788503.jpg'),
(3, 'Fettucine alfredo', 'https://www.themealdb.com/images/media/meals/uquqtu1511178042.jpg'),  
(4, 'Vegan Chocolate Cake', 'https://www.themealdb.com/images/media/meals/qxutws1486978099.jpg');

/*BEEF AND MUSTARD PIE INGREDIENTS*/
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('Butter' , 1);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('Beef Stock', 1);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('Beef', 1);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('Carrots', 1);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('Egg Yolks', 1);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('Green Beans', 1);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('Mustard', 1);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('Pepper', 1);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('Plain Flour', 1);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('Puff Pastry', 1);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('Thyme', 1);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('Rapeseed Oil', 1);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('Red Wine', 1);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('Salt', 1);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('Onion', 1);

/*AYAM PERCIK INGREDIENTS*/
INSERT INTO ingredient (ingredient_name , recipe_id) VALUES ('Chicken Thighs', 2);
INSERT INTO ingredient (ingredient_name , recipe_id) VALUES ('Challots' , 2);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('Ginger', 2);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('Garlic Clove', 2);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('Cayenne pepper', 2);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('Tumeric', 2);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('Cumin', 2);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('Coriander', 2);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('Fennel', 2);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('Tamarind Paste', 2);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('Coconut Milk', 2);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('Sugar', 2);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('Water', 2);

/*VEGAN CHOCOLATE CAKE INGREDIENTS*/
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('Self Rising Flour', 3);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('Coco Sugar', 3);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('Cacao', 3);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('Baking Powder', 3);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('Flax Eggs', 3);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('Almond Milk', 3);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('Vanilla', 3);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('Water', 3);

/*FETTUCINE ALFREDO INGREDIENTS*/
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('Butter' , 4);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('Corn Flour', 4);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('Fettucine', 4);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('Heavy Cream', 4);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('Nutmeg', 4);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('Parmasean Cheese', 4);
INSERT INTO ingredient (ingredient_name, recipe_id) VALUES ('Parsley', 4);