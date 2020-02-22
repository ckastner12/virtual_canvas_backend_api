class User < ApplicationRecord
    has_many :bookmarks
    has_many :pictures, dependent: :destroy
    validates :email, uniqueness: true, presence: true
    has_secure_password
end
