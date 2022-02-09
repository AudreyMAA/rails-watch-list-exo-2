class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :watchlists, through: :bookmarks

  validates :title, presence: true
  validates :rating, presence: true
  validates :poster_url, presence: true
end
