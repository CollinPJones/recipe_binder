class IngredientCategoriesController < ApplicationController
  def index
    @ingredient_categories = IngredientCategory.all

    render("ingredient_categories/index.html.erb")
  end

  def show
    @ingredient_category = IngredientCategory.find(params[:id])

    render("ingredient_categories/show.html.erb")
  end

  def new
    @ingredient_category = IngredientCategory.new

    render("ingredient_categories/new.html.erb")
  end

  def create
    @ingredient_category = IngredientCategory.new

    @ingredient_category.name = params[:name]

    save_status = @ingredient_category.save

    if save_status == true
      redirect_to("/ingredient_categories/#{@ingredient_category.id}", :notice => "Ingredient category created successfully.")
    else
      render("ingredient_categories/new.html.erb")
    end
  end

  def edit
    @ingredient_category = IngredientCategory.find(params[:id])

    render("ingredient_categories/edit.html.erb")
  end

  def update
    @ingredient_category = IngredientCategory.find(params[:id])

    @ingredient_category.name = params[:name]

    save_status = @ingredient_category.save

    if save_status == true
      redirect_to("/ingredient_categories/#{@ingredient_category.id}", :notice => "Ingredient category updated successfully.")
    else
      render("ingredient_categories/edit.html.erb")
    end
  end

  def destroy
    @ingredient_category = IngredientCategory.find(params[:id])

    @ingredient_category.destroy

    if URI(request.referer).path == "/ingredient_categories/#{@ingredient_category.id}"
      redirect_to("/", :notice => "Ingredient category deleted.")
    else
      redirect_to(:back, :notice => "Ingredient category deleted.")
    end
  end
end
