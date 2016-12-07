Rails.application.routes.draw do
  #Root Route
  root "courses#index"
  #------------------------------

  # Routes for the Bookmark resource:
  # CREATE
  get "/create_bookmark/:recipe_id/:user_id", controller: "bookmarks", action: "create"

  # READ
  get "/my_bookmarks", controller: "bookmarks", action: "index"

  # DELETE
  get "/delete_bookmark/:id", controller: "bookmarks", action: "destroy"
  #------------------------------

  # Routes for the Rating resource:
  # CREATE
  get "/create_rating/:recipe_id/:user_id/:score", controller: "ratings", action: "create"

  #UPDATE
  get "/update_rating/:id/:score", controller: "ratings", action: "update"
  #------------------------------

  # Routes for the Direction resource:
  # CREATE
  get "/directions/new", :controller => "directions", :action => "new"
  post "/create_direction", :controller => "directions", :action => "create"

  # READ
  get "/directions", :controller => "directions", :action => "index"
  get "/directions/:id", :controller => "directions", :action => "show"

  # UPDATE
  get "/directions/:id/edit", :controller => "directions", :action => "edit"
  post "/update_direction/:id", :controller => "directions", :action => "update"
  get "/step_up_direction/:id", :controller => "directions", :action => "step_up"
  get "/step_down_direction/:id", :controller => "directions", :action => "step_down"

  # DELETE
  get "/delete_direction/:id", :controller => "directions", :action => "destroy"
  #------------------------------

  # Routes for the Recipe_ingredient resource:
  # CREATE
  get "/recipe_ingredients/new", :controller => "recipe_ingredients", :action => "new"
  post "/create_recipe_ingredient", :controller => "recipe_ingredients", :action => "create"

  # READ
  get "/recipe_ingredients", :controller => "recipe_ingredients", :action => "index"
  get "/recipe_ingredients/:id", :controller => "recipe_ingredients", :action => "show"

  # UPDATE
  get "/recipe_ingredients/:id/edit", :controller => "recipe_ingredients", :action => "edit"
  post "/update_recipe_ingredient/:id", :controller => "recipe_ingredients", :action => "update"

  # DELETE
  get "/delete_recipe_ingredient/:id", :controller => "recipe_ingredients", :action => "destroy"
  #------------------------------

  # Routes for the Recipe resource:
  # CREATE
  get "/recipes/new", :controller => "recipes", :action => "new"
  get "/recipes/new/:course_id", :controller => "recipes", :action => "new"
  post "/create_recipe", :controller => "recipes", :action => "create"

  # READ
  get "/recipes", :controller => "recipes", :action => "index"
  get "/recipes/:id", :controller => "recipes", :action => "show"
  get "/user_recipes/:user_id", :controller => "recipes", :action => "user_recipes"

  # UPDATE
  get "/recipes/:id/edit", :controller => "recipes", :action => "edit"
  post "/update_recipe/:id", :controller => "recipes", :action => "update"
  get "/recipe_second_form/:id", controller: "recipes", action: "second_form"

  # DELETE
  get "/delete_recipe/:id", :controller => "recipes", :action => "destroy"
  #------------------------------

  # Routes for the Course resource:
  # CREATE
  get "/courses/new", :controller => "courses", :action => "new"
  post "/create_course", :controller => "courses", :action => "create"

  # READ
  get "/courses", :controller => "courses", :action => "index"
  get "/courses/:id", :controller => "courses", :action => "show"

  # UPDATE
  get "/courses/:id/edit", :controller => "courses", :action => "edit"
  post "/update_course/:id", :controller => "courses", :action => "update"

  # DELETE
  get "/delete_course/:id", :controller => "courses", :action => "destroy"
  #------------------------------

  # Routes for the Ingredient resource:
  # CREATE
  get "/ingredients/new", :controller => "ingredients", :action => "new"
  post "/create_ingredient", :controller => "ingredients", :action => "create"

  # READ
  get "/ingredients", :controller => "ingredients", :action => "index"
  get "/ingredients/:id", :controller => "ingredients", :action => "show"

  # UPDATE
  get "/ingredients/:id/edit", :controller => "ingredients", :action => "edit"
  post "/update_ingredient/:id", :controller => "ingredients", :action => "update"

  # DELETE
  get "/delete_ingredient/:id", :controller => "ingredients", :action => "destroy"
  #------------------------------

  # Routes for the Measurement_unit resource:
  # CREATE
  get "/measurement_units/new", :controller => "measurement_units", :action => "new"
  post "/create_measurement_unit", :controller => "measurement_units", :action => "create"

  # READ
  get "/measurement_units", :controller => "measurement_units", :action => "index"
  get "/measurement_units/:id", :controller => "measurement_units", :action => "show"

  # UPDATE
  get "/measurement_units/:id/edit", :controller => "measurement_units", :action => "edit"
  post "/update_measurement_unit/:id", :controller => "measurement_units", :action => "update"

  # DELETE
  get "/delete_measurement_unit/:id", :controller => "measurement_units", :action => "destroy"
  #------------------------------

  # Routes for the Measurement resource:
  # CREATE
  get "/measurements/new", :controller => "measurements", :action => "new"
  post "/create_measurement", :controller => "measurements", :action => "create"

  # READ
  get "/measurements", :controller => "measurements", :action => "index"
  get "/measurements/:id", :controller => "measurements", :action => "show"

  # UPDATE
  get "/measurements/:id/edit", :controller => "measurements", :action => "edit"
  post "/update_measurement/:id", :controller => "measurements", :action => "update"

  # DELETE
  get "/delete_measurement/:id", :controller => "measurements", :action => "destroy"
  #------------------------------

  # Routes for the Ingredient_category resource:
  # CREATE
  get "/ingredient_categories/new", :controller => "ingredient_categories", :action => "new"
  post "/create_ingredient_category", :controller => "ingredient_categories", :action => "create"

  # READ
  get "/ingredient_categories", :controller => "ingredient_categories", :action => "index"
  get "/ingredient_categories/:id", :controller => "ingredient_categories", :action => "show"

  # UPDATE
  get "/ingredient_categories/:id/edit", :controller => "ingredient_categories", :action => "edit"
  post "/update_ingredient_category/:id", :controller => "ingredient_categories", :action => "update"

  # DELETE
  get "/delete_ingredient_category/:id", :controller => "ingredient_categories", :action => "destroy"
  #------------------------------

  devise_for :users
  ############root "recipes#index"
end
