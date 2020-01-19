class P5ShapeSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :picture_id, :fill, :frequency, :stroke, :shape, :width, :height, :amount, :orbit, :spin
  belongs_to :picture
  belongs_to :user

  
end
