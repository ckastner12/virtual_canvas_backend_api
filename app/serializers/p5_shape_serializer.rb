class P5ShapeSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :fill, :frequency, :stroke, :type, :width, :height, :amount, :orbit, :spin
  belongs_to :picture
  belongs_to :user

  
end
