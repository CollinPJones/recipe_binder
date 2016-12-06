class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    @courses = Course.all.order("name")
    render("recipes/index.html.erb")
  end

  def show
    @recipe = Recipe.find(params[:id])
    @ingredients = @recipe.recipe_ingredients
    @directions = @recipe.directions

    render("recipes/show.html.erb")
  end

  def new
    @recipe = Recipe.new
    if params[:course_id] != nil
      @recipe.course_id = params[:course_id]
    end

    render("recipes/new.html.erb")
  end

  def create
    @recipe = Recipe.new

    @recipe.name = params[:name]
    @recipe.cook_temp = params[:cook_temp]
    @recipe.cook_time_hrs = params[:cook_time_hrs]
    @recipe.cook_time_minutes = params[:cook_time_minutes]
    @recipe.servings = params[:servings]
    @recipe.description = params[:description]
    @recipe.user_id = params[:user_id]
    @recipe.course_id = params[:course_id]

    save_status = @recipe.save

    if save_status == true
      redirect_to("/recipe_second_form/#{@recipe.id}", :notice => "Recipe created successfully.")
    else
      render("recipes/new.html.erb")
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
    @ingredients = @recipe.recipe_ingredients
    @directions = @recipe.directions

    render("recipes/edit.html.erb")
  end

  def update
    @recipe = Recipe.find(params[:id])

    @recipe.name = params[:name]
    @recipe.cook_temp = params[:cook_temp]
    @recipe.cook_time_hrs = params[:cook_time_hrs]
    @recipe.cook_time_minutes = params[:cook_time_minutes]
    @recipe.servings = params[:servings]
    @recipe.description = params[:description]
    @recipe.user_id = params[:user_id]
    @recipe.course_id = params[:course_id]

    save_status = @recipe.save

    if save_status == true
      redirect_to("/recipe_second_form/#{@recipe.id}", :notice => "Recipe updated successfully.")
    else
      render("recipes/edit.html.erb")
    end
  end

  def second_form
    @recipe = Recipe.find(params[:id])
    @ingredients = @recipe.recipe_ingredients
    @directions = @recipe.directions

    if URI(request.referer).path == "/create_recipe"
      @new = true
    else
      @new = false
    end

    render("recipes/recipe_second_form.html.erb")
  end

  def destroy
    @recipe = Recipe.find(params[:id])

    @recipe.destroy

    if URI(request.referer).path == "/recipes/#{@recipe.id}"
      redirect_to("/", :notice => "Recipe deleted.")
    else
      redirect_to(:back, :notice => "Recipe deleted.")
    end
  end
end
