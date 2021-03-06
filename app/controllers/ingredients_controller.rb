class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
    @categories = IngredientCategory.all.order("name")
    render("ingredients/index.html.erb")
  end

  def show
    @ingredient = Ingredient.find(params[:id])

    render("ingredients/show.html.erb")
  end

  def new
    @ingredient = Ingredient.new

    render("ingredients/new.html.erb")
  end

  def create
    @ingredient = Ingredient.new

    @ingredient.name = params[:name]
    @ingredient.purchase_container = params[:purchase_container]
    @ingredient.purchase_quantity = params[:purchase_quantity]
    @ingredient.category_id = params[:category_id]
    @ingredient.purchase_measurement_unit_id = params[:purchase_measurement_unit_id]

    save_status = @ingredient.save

    if save_status == true
      redirect_to("/ingredients/#{@ingredient.id}", :notice => "Ingredient created successfully.")
    else
      render("ingredients/new.html.erb")
    end
  end

  def edit
    @ingredient = Ingredient.find(params[:id])

    render("ingredients/edit.html.erb")
  end

  def update
    @ingredient = Ingredient.find(params[:id])

    @ingredient.name = params[:name]
    @ingredient.purchase_container = params[:purchase_container]
    @ingredient.purchase_quantity = params[:purchase_quantity]
    @ingredient.category_id = params[:category_id]
    @ingredient.purchase_measurement_unit_id = params[:purchase_measurement_unit_id]

    save_status = @ingredient.save

    if save_status == true
      if URI(request.referer).path == "/ingredients/#{@ingredient.id}/edit"
        redirect_to("/ingredients/#{@ingredient.id}", :notice => "Ingredient updated successfully.")
      else
        redirect_to(:back, :notice => "Ingredient updated successfully.")
      end
    else
      render("ingredients/edit.html.erb")
      if URI(request.referer).path == "/ingredients/#{@ingredient.id}/edit"
        render("ingredients/edit.html.erb")
      else
        redirect_to(:back, :notice => "Ingredient update unsuccessful.")
      end
    end
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])

    @ingredient.destroy

    if URI(request.referer).path == "/ingredients/#{@ingredient.id}"
      redirect_to("/", :notice => "Ingredient deleted.")
    else
      redirect_to(:back, :notice => "Ingredient deleted.")
    end
  end
end
