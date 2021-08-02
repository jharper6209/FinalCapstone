DROP TABLE IF EXISTS catagories CASCADE;

CREATE TABLE catagories(
categoryid serial NOT NULL,
name varchar(255)
);

INSERT INTO catagories (name)
VALUES
('Beef'),
('Chicken'), 
('Pasta'), 
('Vegan');