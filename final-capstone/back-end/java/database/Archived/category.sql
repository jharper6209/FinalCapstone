DROP TABLE IF EXISTS catagories CASCADE;

CREATE TABLE category(
category_id SERIAL NOT NULL,
category_name CHARACTER VARYING(50) NOT NULL,
CONSTRAINT pk_category_category_id PRIMARY KEY (category_id)
);

INSERT INTO category (category_name)
VALUES
('Gluten-Free'),
('Keto/Low Carb'), 
('No Restrictions'), 
('Vegetarian'), 
('Vegan');