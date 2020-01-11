class User < ApplicationRecord
    has_many :bookmarks
    has_many :pictures
    validates :email, uniqueness: true, presence: true
end
