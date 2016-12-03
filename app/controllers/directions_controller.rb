class DirectionsController < ApplicationController
  def index
    @directions = Direction.all

    render("directions/index.html.erb")
  end

  def show
    @direction = Direction.find(params[:id])

    render("directions/show.html.erb")
  end

  def new
    @direction = Direction.new

    render("directions/new.html.erb")
  end

  def create
    @direction = Direction.new

    @direction.recipe_id = params[:recipe_id]
    @direction.step = params[:step]
    @direction.description = params[:description]

    save_status = @direction.save

    if save_status == true
      redirect_to("/directions/#{@direction.id}", :notice => "Direction created successfully.")
    else
      render("directions/new.html.erb")
    end
  end

  def edit
    @direction = Direction.find(params[:id])

    render("directions/edit.html.erb")
  end

  def update
    @direction = Direction.find(params[:id])

    @direction.recipe_id = params[:recipe_id]
    @direction.step = params[:step]
    @direction.description = params[:description]

    save_status = @direction.save

    if save_status == true
      redirect_to("/directions/#{@direction.id}", :notice => "Direction updated successfully.")
    else
      render("directions/edit.html.erb")
    end
  end

  def destroy
    @direction = Direction.find(params[:id])

    @direction.destroy

    if URI(request.referer).path == "/directions/#{@direction.id}"
      redirect_to("/", :notice => "Direction deleted.")
    else
      redirect_to(:back, :notice => "Direction deleted.")
    end
  end
end
