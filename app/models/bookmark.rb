class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :movie_id, uniqueness: { scope: :list_id}
  validates :comment, length: {
    minimum: 6,
    message: "must be at least 6 characters long"
  }
end
