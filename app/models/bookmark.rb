class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :watchlist
end
