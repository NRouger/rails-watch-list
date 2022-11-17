class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: { minimum: 7 }
  validates :list, uniqueness: { scope: :movie }

end
