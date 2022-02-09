class WatchlistsController < ApplicationController
  def index
    @watchlists = Watchlist.all
    @watchlist = Watchlist.new
  end

  def show
    @watchlist = Watchlist.find(params[:id])
  end

  def new
    @watchlist = Watchlist.new
  end

  def create
    @watchlist = Watchlist.new(params_watchlist)
    if @watchlist.save
      redirect_to watchlist_path(@watchlist)
    else
      render :new
    end
  end

  def destroy
    @watchlist = Watchlist.find(params[:id])
    @watchlist.destroy
    redirect_to watchlists_path
  end
  private

  def params_watchlist
    params.require(:watchlist).permit(:name, :image)
  end
end
