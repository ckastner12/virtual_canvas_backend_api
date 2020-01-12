class Picture < ApplicationRecord
    has_many :animate_mos, dependent: :destroy
    belongs_to :user
end
