Rails.application.routes.draw do
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
  post "/create_recipe", :controller => "recipes", :action => "create"

  # READ
  get "/recipes", :controller => "recipes", :action => "index"
  get "/recipes/:id", :controller => "recipes", :action => "show"

  # UPDATE
  get "/recipes/:id/edit", :controller => "recipes", :action => "edit"
  post "/update_recipe/:id", :controller => "recipes", :action => "update"

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
