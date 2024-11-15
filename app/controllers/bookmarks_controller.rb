class BookmarksController < ApplicationController
  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new(list_params)
    @bookmark.list = @list
    if @bookmark.save
      redirect_to lists_path(@bookmark)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def list_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end
end
