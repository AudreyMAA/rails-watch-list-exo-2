class Watchlist < ApplicationRecord
  has_many :bookmarks
  has_many :movies, through: :bookmarks

  validates :name, presence: true
  validates :image, presence: true
end
