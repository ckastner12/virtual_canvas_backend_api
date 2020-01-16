class AnimateMoSerializer < ActiveModel::Serializer
  attributes :id, :picture_id, :user_id, :shape, :color, :radius_1, :radius_2, :count, :duration, :angle, :stroke_width
end
