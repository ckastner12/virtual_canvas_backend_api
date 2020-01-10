class Picture < ApplicationRecord
    has_many :animate_mos, dependent: :destroy
end
