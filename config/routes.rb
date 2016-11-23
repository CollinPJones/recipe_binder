Rails.application.routes.draw do
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
