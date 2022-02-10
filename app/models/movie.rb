class Movie < ApplicationRecord
  has_one_attached :poster_url
  has_many :bookmarks
  has_many :watchlists, through: :bookmarks

  validates :title, presence: true
  validates :rating, presence: true
  validates :poster_url, presence: true
end
