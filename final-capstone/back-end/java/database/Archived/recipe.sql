DROP TABLE IF EXISTS recipe CASCADE;

CREATE TABLE recipe (
recipe_id SERIAL NOT NULL,
category_id INTEGER NOT NULL,
recipe_name CHARACTER VARYING(50) NOT NULL,
image CHARACTER VARYING(100) NOT NULL,
CONSTRAINT pk_recipe_recipe_id PRIMARY KEY (recipe_id)
);

INSERT INTO recipe (category_id, recipe_name, image)
VALUES(3, 'Beef and Mustard Pie', 'https://www.themealdb.com/images/media/meals/sytuqu1511553755.jpg'),
(2, 'Ayam Percik','https://www.themealdb.com/images/media/meals/020z181619788503.jpg'),
(4, 'Fettucine alfredo', 'https://www.themealdb.com/images/media/meals/uquqtu1511178042.jpg'),  
(5, 'Vegan Chocolate Cake', 'https://www.themealdb.com/images/media/meals/qxutws1486978099.jpg');