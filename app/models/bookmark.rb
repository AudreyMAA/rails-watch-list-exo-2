class Bookmark < ApplicationRecord
  LISTS = Watchlist.all
  belongs_to :movie
  belongs_to :watchlist
end
