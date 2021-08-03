DROP TABLE IF EXISTS Ingredient CASCADE;

CREATE TABLE Ingredient(
ingredientId serial NOT NULL,
ingredientName varchar(255) NOT NULL
)
;

INSERT INTO Ingredient (ingredientName)
VALUES 
('Beef'),
('Plain Flour'),
('Rapesee Oil'),
('Red Wine'),
('Beef Stock'),
('Onion'),
('Carrots'),
('Thyme'),
('Mustard'),
('Egg Yolks'),
('Puff Pastry'),
('Green Beans'),
('Butter'),
('Salt'),
('Pepper'),

('Chicken Thighs'),
('Challot'),
('Ginger'),
('Garlic Clove'),
('Cayenne Pepper'),
('Tumeric'),
('Cumin'),
('Coriander'),
('Fennel'),
('Tamarind Paste'),
('Coconut Milk'),
('Suger'),
('Water'),

('Self Rising Flour'),
('Coco Sugar'),
('Cacao'),
('Baking Powder'),
('Flax Eggs'),
('Almond Milk'),
('Vanilla'),
('Water'),

('Heavy Cream'),
('Corn Flour'),
('Parasean Cheese'),
('Nutmeg'),
('Fettucine'),
('Parsley')
;

