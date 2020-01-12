class Bookmark < ApplicationRecord
  belongs_to :user
  belongs_to :picture
  validates :user, uniqueness: {scope: :picture, message: "Already Bookmarked"}
end
