class List < ApplicationRecord
    has_many :bookmarks, dependent: :destroy
    has_many :movies, through: :bookmarks
    has_one_attached :photo
    validates :name, uniqueness: true, presence: true, length: {
    maximum: 10,
    message: "cannot be longer than 10 characters"
  }
end
