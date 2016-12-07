class RatingsController < ApplicationController
  def create
    @rating = Rating.new
    @rating.user_id = params[:user_id]
    @rating.recipe_id = params[:recipe_id]
    @rating.score = params[:score].to_f.round(0)
    save_status = @rating.save

    if save_status == true
      redirect_to(:back, :notice => "Rating saved successfully.")
    else
      redirect_to(:back, :notice => "Rating unsuccessful.")
    end
  end

  def update
    @rating = Rating.find_by(params[:id])
    @rating.score = params[:score].to_f.round(0)
    save_status = @rating.save

    if save_status == true
      redirect_to(:back, :notice => "Rating updated successfully.")
    else
      redirect_to(:back, :notice => "Rating update unsuccessful.")
    end
  end
end
