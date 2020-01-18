class Picture < ApplicationRecord
    has_many :animate_mos, dependent: :destroy
    has_many :p5_shapes, dependent: :destroy
    belongs_to :user
end
