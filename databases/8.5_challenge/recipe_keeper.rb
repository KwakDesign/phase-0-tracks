# # Recipe Keeper v.1
# # An application that lets you store, edit, view recipes and ingredients.
# # The application has 2 predefined tables called INGREDIENTS and RECIPES, where INGREDIENTS will have some default ingredients already populated.

# # require gems, install them if they aren't already.
# require 'sqlite3' # lets you create a SQLite3 db

# # create an instance of a SQLite3 database.
# recipe_db = SQLite3::Database.new("recipe_keep.db")
# # recipe_db.results_as_hash = true

# # using heredoc create a table called INGREDIENTS which will store ingredients and RECIPES which will store recipes.
# create_recipes = <<-SQL
#   CREATE TABLE IF NOT EXISTS RECIPES (
#     id INTEGER PRIMARY KEY,
#     recipe_name VARCHAR(255)
#   );
# SQL
# create_recipes_ingredients = <<-SQL
#   CREATE TABLE IF NOT EXISTS RECIPES_INGREDIENTS (
#     id INTEGER PRIMARY KEY,
#     qty VARCHAR(255),
#     recipe_id INT,
#     ingredient_id INT,
#     FOREIGN KEY (recipe_id) REFERENCES RECIPES(id),
#     FOREIGN KEY (ingredient_id) REFERENCES INGREDIENTS(id)
#   );
# SQL
# create_ingredients = <<-SQL
#   CREATE TABLE IF NOT EXISTS INGREDIENTS (
#     id INTEGER PRIMARY KEY,
#     ingredient_name VARCHAR(255)
#   );
# SQL

# # execute and create the tables IF they do not exist yet.
# recipe_db.execute(create_recipes)
# recipe_db.execute(create_recipes_ingredients)
# recipe_db.execute(create_ingredients)

# # create method that will add a recipe name to the RECIPES table.
# def add_recipe_name(db, info)
#   db.execute("INSERT INTO RECIPES (recipe_name) VALUES (?)", [info[:recipe_name]])
#   this_recipe_id = db.execute("SELECT id FROM RECIPES WHERE recipe_name='#{info[:recipe_name]}'")
#   this_recipe_id[0][0]
# end

# # create method that checks if the recipe name already exists.
# def check_recipe_name(db, info)
#   this_recipe_check = db.execute("SELECT recipe_name FROM RECIPES WHERE recipe_name='#{info[:recipe_name]}'")
#   if this_recipe_check == nil || this_recipe_check[0] == nil
#     return false
#   end
#   if this_recipe_check[0][0] == info[:recipe_name]
#     return true
#   else
#     return false
#   end
# end

# # create method that will add a ingredient name to the INGREDIENTS table.
# def add_ingredient_name(db, info)
#   db.execute("INSERT INTO INGREDIENTS (ingredient_name) VALUES (?)", [info[:ingredient_name]])
#   this_ingredient_id = db.execute("SELECT id FROM INGREDIENTS WHERE ingredient_name='#{info[:ingredient_name]}'")
#   this_ingredient_id[0][0]
# end

# # create method that checks if the ingredient is already in the INGREDIENTS table.
# def check_ingredient_name(db, info)
#   # we SELECT the id of the ingredient name from the INGREDIENTS table using the ingredient name we passed into method.
#   select_ingredient_id = db.execute("SELECT id FROM INGREDIENTS WHERE ingredient_name='#{info[:ingredient_name]}'")
#   # p select_ingredient_id
#   # IF the ingredient name is not in the table, we return false.
#   if select_ingredient_id == nil || select_ingredient_id[0] == nil
#     return false
#   end
#   # we now use the id of the ingredient name to SELECT the ingredient id from the RECIPES_INGREDIENTS table to see if it's in the table.
#   select_join_ingredient_id = db.execute("SELECT ingredient_id FROM RECIPES_INGREDIENTS WHERE ingredient_id='#{select_ingredient_id[0][0]}'")
#   # p select_join_ingredient_id
#   # p select_ingredient_id[0][0] == select_join_ingredient_id[0][0]
#   # IF the ingredient name id from the INGREDIENTS table is equal to the ingredient id from the RECIPES_INGREDIENTS table, this will mean the ingredient is in the INGREDIENTS table and the RECIPES_INGREDIENTS table as well. We then return the id from the INGREDIENTS table, otherwise we return false.
# if select_ingredient_id[0][0] == select_join_ingredient_id[0][0]
#     return select_ingredient_id[0][0]
#   else
#     return false
#   end
# end

# # create method that will add the recipe with it's number of ingredients to the RECIPES_INGREDIENTS table.
# def add_recipe(db, info)
#   db.execute("INSERT INTO RECIPES_INGREDIENTS (recipe_id, qty, ingredient_id) VALUES (?, ?, ?)", [info[:recipe_id], info[:qty], info[:ingredient_id]])
#   # need to rework this so it handles the validation...need more time.
#   # this_recipe_id_check = db.execute("SELECT recipe_id FROM RECIPES_INGREDIENTS WHERE ingredient_id='#{info[:ingredient_id]}'")
#   # this_ingredient_id_check = db.execute("SELECT ingredient_id FROM RECIPES_INGREDIENTS WHERE ingredient_id='#{info[:ingredient_id]}'")

#   # if this_ingredient_id_check == nil || this_ingredient_id_check[0] == nil
#   #   db.execute("INSERT INTO RECIPES_INGREDIENTS (recipe_id, qty, ingredient_id) VALUES (?, ?, ?)", [info[:recipe_id], info[:qty], info[:ingredient_id]])
#   # elsif this_ingredient_id_check[0][0] == info[:ingredient_id]
#   #   puts "This ingredient has already been added to this recipe."
#   # else
#   #   db.execute("INSERT INTO RECIPES_INGREDIENTS (recipe_id, qty, ingredient_id) VALUES (?, ?, ?)", [info[:recipe_id], info[:qty], info[:ingredient_id]])
#   # end
# end


# info = {}
# what_task = nil
# more_ingredients = false
# what_recipe = false

# puts "Welcome to the Recipe Keeper!\n\n"

# while what_task != 'done'
#   puts "To add a recipe, type 'add'.\nTo delete a recipe, type 'delete'.\nTo view a recipe type, 'view'.\nTo exit the application, type 'done'."

#   what_task = gets.chomp.downcase

#   break if what_task == 'done'

#   case what_task
#   when 'add'
#     while what_recipe != true
#       puts "Enter the recipe's name."
#       recipe_name = gets.chomp.downcase
#       info[:recipe_name] = recipe_name
#       if check_recipe_name(recipe_db, info)
#         puts "The recipe has already been entered."
#       else
#         info[:recipe_id] = add_recipe_name(recipe_db, info)
#         what_recipe = true
#       end
#     end
#     while more_ingredients != true
#       puts "Enter ingredients needed for the recipe."
#       ingredient_name = gets.chomp.downcase
#       info[:ingredient_name] = ingredient_name
#       break if ingredient_name == 'done'
#       puts "Enter the quantity needed for the recipe."
#       qty_info = gets.chomp.downcase
#       info[:qty] = qty_info
#       if check_ingredient_name(recipe_db, info)
#         info[:ingredient_id] = check_ingredient_name(recipe_db, info)
#         add_recipe(recipe_db, info)
#       else
#         info[:ingredient_id] = add_ingredient_name(recipe_db, info)
#         add_recipe(recipe_db, info)
#       end
#     end
#   when 'delete'
#   when 'view'
#   end
# end