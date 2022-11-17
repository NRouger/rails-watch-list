class Movie < ApplicationRecord
  has_many :lists, through: :bookmarks
  has_many :bookmarks
  # validates :title, presence: true, allow_blank: false
  validates :title, allow_blank: false, uniqueness: true, presence: true
  validates :overview, presence: true
end
