DROP TABLE IF EXISTS recipe CASCADE;

CREATE TABLE recipe(
recipeid serial NOT NULL,
name varchar(255) NOT NULL,
image varchar(255)
);

INSERT INTO recipe (name, image)
VALUES
('Beef and Mustard Pie', 'https://www.themealdb.com/images/media/meals/sytuqu1511553755.jpg'),
('Ayam Percik','https://www.themealdb.com/images/media/meals/020z181619788503.jpg'),
('Fettucine alfredo', 'https://www.themealdb.com/images/media/meals/uquqtu1511178042.jpg'),  
('Vegan Chocolate Cake', 'https://www.themealdb.com/images/media/meals/qxutws1486978099.jpg')