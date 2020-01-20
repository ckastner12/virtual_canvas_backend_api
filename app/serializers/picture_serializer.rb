class PictureSerializer < ActiveModel::Serializer
  attributes :id, :title, :background
  has_many :animate_mos
  has_many :p5_shapes
  belongs_to :user
end
