class Watchlist < ApplicationRecord
  has_one_attached :image
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks

  validates :name, presence: true
  validates :image, presence: true
end
