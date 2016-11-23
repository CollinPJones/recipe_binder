class MeasurementUnitsController < ApplicationController
  def index
    @measurement_units = MeasurementUnit.all

    render("measurement_units/index.html.erb")
  end

  def show
    @measurement_unit = MeasurementUnit.find(params[:id])

    render("measurement_units/show.html.erb")
  end

  def new
    @measurement_unit = MeasurementUnit.new

    render("measurement_units/new.html.erb")
  end

  def create
    @measurement_unit = MeasurementUnit.new

    @measurement_unit.name = params[:name]
    @measurement_unit.measurement_id = params[:measurement_id]

    save_status = @measurement_unit.save

    if save_status == true
      redirect_to("/measurement_units/#{@measurement_unit.id}", :notice => "Measurement unit created successfully.")
    else
      render("measurement_units/new.html.erb")
    end
  end

  def edit
    @measurement_unit = MeasurementUnit.find(params[:id])

    render("measurement_units/edit.html.erb")
  end

  def update
    @measurement_unit = MeasurementUnit.find(params[:id])

    @measurement_unit.name = params[:name]
    @measurement_unit.measurement_id = params[:measurement_id]

    save_status = @measurement_unit.save

    if save_status == true
      redirect_to("/measurement_units/#{@measurement_unit.id}", :notice => "Measurement unit updated successfully.")
    else
      render("measurement_units/edit.html.erb")
    end
  end

  def destroy
    @measurement_unit = MeasurementUnit.find(params[:id])

    @measurement_unit.destroy

    if URI(request.referer).path == "/measurement_units/#{@measurement_unit.id}"
      redirect_to("/", :notice => "Measurement unit deleted.")
    else
      redirect_to(:back, :notice => "Measurement unit deleted.")
    end
  end
end
