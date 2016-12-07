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
      redirect_to(:back, :notice => "Direction created successfully.")
    else
      redirect_to(:back, :notice => "Direction creation unsuccessful.")
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
      redirect_to(:back, :notice => "Direction updated successfully.")
    else
      redirect_to(:back, :notice => "Direction update unsuccessful.")
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

  def step_up
    @step_a = Direction.find_by(id: params[:id])
    directions = Direction.where(recipe_id: @step_a.recipe_id)
    @step_b = directions.find_by(step: (@step_a.step + 1))
    a_s = @step_a.step
    b_s = @step_b.step
    @step_a.step = b_s
    @step_b.step = a_s
    save_status_a = @step_a.save

    # Make sure both Steps A and B are updated successfully
    if save_status_a == true
      save_status_b = @step_b.save
      if save_status_b == true
        save_status = true
      else
        save_status = false
        @step_a.step = @step_a.step -1
        @step_a.save
      end
    else
      save_status = false
    end

    if save_status == true
      redirect_to(:back, :notice => "Step order updated successfully.")
    else
      redirect_to(:back, :notice => "Step order update unsuccessful.")
    end
  end

  def step_down
    @step_a = Direction.find_by(id: params[:id])
    directions = Direction.where(recipe_id: @step_a.recipe_id)
    @step_b = directions.find_by(step: (@step_a.step - 1))
    a_s = @step_a.step
    b_s = @step_b.step
    @step_a.step = b_s
    @step_b.step = a_s
    save_status_a = @step_a.save

    # Make sure both Steps A and B are updated successfully
    if save_status_a == true
      save_status_b = @step_b.save
      if save_status_b == true
        save_status = true
      else
        save_status = false
        @step_a.step = @step_a.step + 1
        @step_a.save
      end
    else
      save_status = false
    end

    if save_status == true
      redirect_to(:back, :notice => "Step order updated successfully.")
    else
      redirect_to(:back, :notice => "Step order update unsuccessful.")
    end
  end
end
