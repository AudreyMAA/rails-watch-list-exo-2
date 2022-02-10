# require 'pry-byebug'

class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
    @movie = Movie.find(params[:movie_id])
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @movie = Movie.find(params[:movie_id])
    @bookmark.movie = @movie
    @watchlist = Watchlist.find(@bookmark.list_name)
    @bookmark.watchlist = @watchlist

    if @bookmark.save
      redirect_to movie_path(@movie)
    else
      render :new
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    if @bookmark.destroy
      redirect_to watchlist_path(@bookmark.watchlist)
    end
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:list_name)
  end
end
