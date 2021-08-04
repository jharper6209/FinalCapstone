DROP TABLE IF EXISTS Category CASCADE;

CREATE TABLE Category (
categoryId serial NOT NULL,
categoryName varchar(255) NOT NULL
);

INSERT INTO Category (categoryName)
VALUES 
('Beef'),
('Chicken'),
('Pasta'),
('Vegan')
;
