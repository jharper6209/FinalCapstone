DROP TABLE IF EXISTS categories CASCADE;

CREATE TABLE categories(
categoryid serial NOT NULL,
name varchar(255)
);

INSERT INTO categories (name)
VALUES
('Beef'),
('Chicken'), 
('Pasta'), 
('Vegan');