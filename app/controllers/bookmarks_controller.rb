class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.where(user_id: current_user.id)
    render("bookmarks/index.html.erb")
  end

  def create
    @bookmark = Bookmark.new
    @bookmark.user_id = params[:user_id]
    @bookmark.recipe_id = params[:recipe_id]
    save_status = @bookmark.save

    if save_status == true
      redirect_to(:back, :notice => "Recipe successfully bookmarked.")
    else
      redirect_to(:back, :notice => "Recipe bookmark creation unsuccessful.")
    end
  end

  def destroy
    @bookmark = Bookmark.find_by(params[:id])
    
    @bookmark.destroy

    redirect_to(:back, :notice => "Bookmark deleted.")
  end
end
