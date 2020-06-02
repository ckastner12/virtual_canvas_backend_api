class Picture < ApplicationRecord
    has_many :p5_shapes, dependent: :destroy
    belongs_to :user
end
