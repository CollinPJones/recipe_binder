class MeasurementsController < ApplicationController
  def index
    @measurements = Measurement.all

    render("measurements/index.html.erb")
  end

  def show
    @measurement = Measurement.find(params[:id])

    render("measurements/show.html.erb")
  end

  def new
    @measurement = Measurement.new

    render("measurements/new.html.erb")
  end

  def create
    @measurement = Measurement.new

    @measurement.name = params[:name]

    save_status = @measurement.save

    if save_status == true
      redirect_to("/measurements/#{@measurement.id}", :notice => "Measurement created successfully.")
    else
      render("measurements/new.html.erb")
    end
  end

  def edit
    @measurement = Measurement.find(params[:id])

    render("measurements/edit.html.erb")
  end

  def update
    @measurement = Measurement.find(params[:id])

    @measurement.name = params[:name]

    save_status = @measurement.save

    if save_status == true
      redirect_to("/measurements/#{@measurement.id}", :notice => "Measurement updated successfully.")
    else
      render("measurements/edit.html.erb")
    end
  end

  def destroy
    @measurement = Measurement.find(params[:id])

    @measurement.destroy

    if URI(request.referer).path == "/measurements/#{@measurement.id}"
      redirect_to("/", :notice => "Measurement deleted.")
    else
      redirect_to(:back, :notice => "Measurement deleted.")
    end
  end
end
