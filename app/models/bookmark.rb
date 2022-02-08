class Bookmark < ApplicationRecord
  belongs_to :movie_id
  belongs_to :watchlist_id
end
