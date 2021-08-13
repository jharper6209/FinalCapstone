CREATE TABLE user_recipe 
(user_id INT NOT NULL,
recipe_id INT NOT NULL);

ALTER TABLE user_recipe ADD CONSTRAINT fk_users_user_id FOREIGN KEY (user_id) REFERENCES users(user_id);
ALTER TABLE user_recipe ADD CONSTRAINT fk_recipe_recipe_id FOREIGN KEY (recipe_id) REFERENCES recipe(recipe_id);

